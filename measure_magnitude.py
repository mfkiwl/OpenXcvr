from baremetal import *
from baremetal.signed import number_of_bits_needed
from settings import Settings
from math import log, pi
from matplotlib import pyplot as plt
import numpy as np
import sys
from math import log, ceil
from numpy import log10

#settings for 100KS/s
#         hang           attack   decay
# med     25000(250ms)   4(1ms)   12(250ms)
# slow    100000(1s)     4(1ms)   13(500ms)
# long    200000(2s)     4(1ms)   15(2s)
# vlong   300000(3s)     4(1ms)   16(4s)


def measure_magnitude(clk, audio, audio_stb, attack_factor=4, decay_factor=16, hang=300000):

    #use a leaky max hold
    audio_bits = audio.subtype.bits

    #add extra bits for decay calculation
    audio = audio.resize(audio_bits+decay_factor) << decay_factor
    max_hold = audio.subtype.register(clk, init=0, en=audio_stb)
    counter = Unsigned(19).register(clk, en=audio_stb, init=0)

    #if signal is greater than magnitude
    attack = (audio > max_hold)


    attack_new_val = max_hold + ((audio - max_hold) >> attack_factor)
    decay_new_val  = max_hold - (max_hold >> decay_factor)
    hold_expired = counter == 0

    counter.d(counter.subtype.select(attack, counter.subtype.select(hold_expired, counter - 1, 0), hang-1))
    max_hold.d(audio.subtype.select(attack, max_hold.subtype.select(hold_expired, max_hold, decay_new_val), attack_new_val))

    #remove extra bits (except one to allow for addition)
    max_hold = (max_hold >> decay_factor).resize(audio_bits)

    return max_hold

if __name__ == "__main__" and "sim" in sys.argv:

    settings = Settings()
    settings.agc_frame_size = 100
    settings.agc_frames = 4
    clk = Clock("clk")
    data_in = Signed(16).input("data_in")
    stb_in = Boolean().input("stb_in")
    magnitude = measure_magnitude(clk, data_in, stb_in)

    stimulus = []
    for i in range(100):
        stimulus.append(100)
    for i in range(1000000):
        stimulus.append(0)

    response = []

    #simulate
    clk.initialise()

    i = 0
    for data in stimulus:
        data_in.set(data)
        for i in range(2):
            stb_in.set(i==1)
            if i==1:
                print magnitude.get()
                response.append(magnitude.get())
            clk.tick()
            i+=1

    response = np.array(response)

    plt.plot(response)
    #plt.plot(stimulus)
    plt.show()
