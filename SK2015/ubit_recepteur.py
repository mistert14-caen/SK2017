
from microbit import *
uart.init(baudrate=115200, bits=8, parity=None, stop=1)

value = 0.0

while True:
    if button_a.was_pressed():
        if value>=0.1:
            value -= .1

    elif button_b.was_pressed():
        if value<1:
            value += .1
    uart.write(str(value)+"\n")
    sleep(25)

