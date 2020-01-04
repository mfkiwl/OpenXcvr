import sys
from math import pi, sin

from baremetal import *
from af_section import af_section
from rf_section import rf_section
from max10adc import max_adc
from audio_dac import audio_dac
from settings import *

def transceiver(clk, rx_i, rx_q, iq_stb, mic, mic_stb, frequency, settings):

    speaker, speaker_stb, tx_i, tx_q, tx_stb = af_section(
        clk, 
        rx_i, 
        rx_q, 
        iq_stb, 
        mic, 
        mic_stb, 
        settings,
    )
    rf, lo_i, lo_q = rf_section(
        clk, 
        frequency = frequency, 
        audio_i = tx_i,
        audio_q = tx_q,
        audio_stb = tx_stb,
        interpolation_factor = 3000, #from 300000000 to 9180
        lut_bits = 10,
        channels = 2
    )

    return speaker, speaker_stb, rx_i, rx_q, iq_stb, rf, lo_i, lo_q

def generate():
    settings = Settings()
    settings.filter_kernel_bits = 18
    settings.agc_frame_size = 65536
    settings.agc_frames = 10
    settings.agc_lut_bits = 7
    settings.agc_lut_fraction_bits = 8

    # Create IP inputs
    ##################

    clk = Clock("clk")
    adc_clk = Clock("adc_clk")
    cpu_clk = Clock("cpu_clk")

    #control settings
    settings.mode     = Unsigned(2).input("filter_mode_in")
    settings.sideband = Unsigned(2).input("filter_sideband_in")
    settings.rx_tx    = Boolean().input("rx_tx_in")
    #settings.squelch = Signed(16).input("squelch")
    settings.squelch  = Signed(16).constant(0)
    frequency         = Unsigned(32).input("frequency_in")

    #adc interface inputs
    response_channel  = Unsigned(5).input("response_channel_in")
    response_data     = Unsigned(12).input("response_data_in")
    response_valid    = Unsigned(1).input("response_valid_in")
    command_ready     = Unsigned(1).input("command_ready_in")

    # USE MAX10 built in ADC
    ########################
    (
        command_channel, 
        command_startofpacket, 
        command_endofpacket, 
        mic, 
        mic_stb, 
        rx_i, 
        rx_q, 
        iq_stb
    ) = max_adc(
        clk, 
        adc_clk, 
        settings.rx_tx,
        command_ready, 
        response_valid, 
        response_channel, 
        response_data
    )

    rx_i = rx_i.resize(16)
    rx_q = rx_q.resize(16)

    print rx_i.subtype

    # Implement transceiver
    ########################
    speaker, speaker_stb, rx_i, rx_q, iq_stb, rf, lo_i, lo_q = transceiver(
            clk, rx_i, rx_q, iq_stb, mic[11:4], mic_stb, frequency, settings)

    # Create Audio DAC
    ##################

    clk = Clock("clk")
    capture = speaker
    speaker = audio_dac(clk, speaker, speaker_stb) 
    
    #audio capture
    ##############

    #extend stb
    speaker_stb = speaker_stb | speaker_stb.subtype.register(clk, d=speaker_stb, init=0)
    speaker_stb = speaker_stb | speaker_stb.subtype.register(clk, d=speaker_stb, init=0)
    speaker_stb = speaker_stb | speaker_stb.subtype.register(clk, d=speaker_stb, init=0)
    speaker_stb = speaker_stb | speaker_stb.subtype.register(clk, d=speaker_stb, init=0)
    capture     = capture.subtype.register(clk, d=capture, en=speaker_stb)
    capture_stb = speaker_stb.subtype.register(clk, d=speaker_stb, init = 0)

    #edge detect strobe in target clock domain
    capture_stb = Boolean().register(cpu_clk, d=capture_stb, init=0)
    capture_stb = Boolean().register(cpu_clk, d=capture_stb, init=0)
    capture_stb = capture_stb & ~Boolean().register(cpu_clk, d=capture_stb, init=0)
    capture = capture.subtype.register(cpu_clk, d=capture, en=capture_stb)
    capture = capture.resize(32)
    capture_stb = Boolean().register(cpu_clk, d=capture_stb, init=0)
    

    # Create Device Outputs
    #######################

    #ADC interface outputs
    command_channel = command_channel.subtype.output("command_channel_out", command_channel)
    command_startofpacket = command_startofpacket.subtype.output("command_startofpacket_out", command_startofpacket)
    command_endofpacket = command_endofpacket.subtype.output("command_endofpacket_out", command_endofpacket)
    capture = capture.subtype.output("capture_out", capture)
    capture_stb = capture.subtype.output("capture_stb_out", capture_stb)

    #RF outputs
    rf = [i.subtype.output("rf_%u_out"%idx, i) for idx, i in enumerate(rf)]
    lo_i = [i.subtype.output("lo_i_%u_out"%idx, i) for idx, i in enumerate(lo_i)]
    lo_q = [i.subtype.output("lo_q_%u_out"%idx, i) for idx, i in enumerate(lo_q)]

    #speaker output
    speaker = speaker.subtype.output("speaker_out", speaker)

    #generate netlist and output
    netlist = Netlist(
        "transceiver",
        #clocks
        [
            clk, 
            adc_clk,
            cpu_clk
        ], 

        #inputs
        [
            settings.mode,
            settings.sideband,
            settings.rx_tx,
            frequency,
            response_channel,
            response_data,
            response_valid,
            command_ready
        ],

        #outputs
        rf + lo_i + lo_q + [
            command_channel,
            command_startofpacket,
            command_endofpacket,
            speaker,
            capture,
            capture_stb
        ]
    )
    f = open("transceiver.v", "w")
    f.write(netlist.generate())

if __name__ == "__main__":

    if "sim" in sys.argv:
        import numpy as np
        from matplotlib import pyplot as plt
        monitor = Monitor(debug)
        clk.initialise()
        response = []
        frequency.set(0x00000000)
        for i in range(256*1500*2):
            clk.tick()
            monitor.monitor()
            for channel in rf:
                print(tx_audio.get(), tx_i.get(), tx_q.get(), channel.get())
                if channel.get():
                    response.append(channel.get()-0.5)

        #response = response-np.mean(response)
        spectrum = np.abs(np.fft.fftshift(np.fft.fft(response)))
        #spectrum = 20.0 * np.log10(spectrum, out=np.zeros_like(spectrum), where=(spectrum!=0))
        plt.plot(spectrum)
        plt.show()

    if "gen" in sys.argv:
        generate()


