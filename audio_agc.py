from baremetal import *
from math import log, pi
from matplotlib import pyplot as plt
import numpy as np
import sys
from math import log, ceil
from settings import Settings
from measure_magnitude import measure_magnitude
from calculate_gain import calculate_gain


def audio_agc(clk, data, stb):

    #calculate magnitude and DC
    magnitude = measure_magnitude(clk, data, stb)

    #rescale the data 
    setpoint = int((2**(data.subtype.bits-1)) * 0.5)
    gain = calculate_gain(clk, magnitude, setpoint)
    gain = gain.subtype.select(gain < 1, gain, 1)

    #keep all the bits so we can handle overflowing values
    bits = data.subtype.bits
    data = data.resize(bits*2)
    data *= gain
    data = data.subtype.register(clk, d=data, init=0, en=stb)
    stb = stb.subtype.register(clk, d=stb)

    #soft clip any signals that have escaped the AGC
    maxval = setpoint
    minval = -setpoint
    positive_overflow = data > maxval
    positive_excess = (data - maxval) >> 1
    data = data.subtype.select(positive_overflow, data, positive_excess+maxval)
    negative_overflow = data < minval
    negative_excess = (data.subtype.constant(minval) - data) >> 1
    data = data.subtype.select(negative_overflow, data, -negative_excess+minval)
    data = data.subtype.register(clk, d=data, init=0, en=stb)
    stb = stb.subtype.register(clk, d=stb)

    #hard clamp signals that we couldn't clip
    maxval = (2**(bits-1))
    minval = -maxval
    positive_overflow = data > maxval
    data = data.subtype.select(positive_overflow, data, maxval)
    negative_overflow = data < minval
    data = data.subtype.select(negative_overflow, data, minval)
    data = data.subtype.register(clk, d=data, init=0, en=stb)
    stb = stb.subtype.register(clk, d=stb)

    data = data[bits-1:0]
    data = data.subtype.register(clk, d=data, init=0, en=stb)
    stb = stb.subtype.register(clk, d=stb)

    return data, stb, gain, magnitude, positive_overflow | negative_overflow

if __name__ == "__main__" and "sim" in sys.argv:

    clk = Clock("clk")
    audio_in = Signed(16).input("magnitude")
    stb_in = Boolean().input("stb")

    audio_out, stb_out, gain, magnitude = audio_agc(clk, audio_in, stb_in)

    clk.initialise()

    for i in range(100):
        audio_in.set(100)
        for i in range(100):
            stb_in.set(i==0)
            clk.tick()
            if stb_out.get():
                print magnitude.get(), gain.get(), audio_out.get()
        audio_in.set(-100)
        for i in range(100):
            stb_in.set(i==0)
            clk.tick()
            if stb_out.get():
                print magnitude.get(), gain.get(), audio_out.get()
