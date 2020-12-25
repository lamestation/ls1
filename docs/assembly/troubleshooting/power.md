# Troubleshooting Power

## The LameStation won't turn on

??? summary "Is it plugged in?"

    It seems obvious enough, but it's always important to check.

    > "When you trace your way back to the wall, you might find it isn't
    > plugged in... at all..."
    > -Anonymous

??? summary "Is the power turned on?"

    Maybe the on position isn't the side you thought it was. It's certainly
    happened to me. :(

??? summary "Is your LED installed in the correct direction?"

    Oops. You weren't looking carefully when you installed the LED, and it's
    actually backwards in its socket. Technically, that's OKAY\! With the
    voltages we're operating at, the diode simply won't conduct current and
    won't light up; everything else will operate normally.

    **However**, without the power LED, you can't quickly determine if there
    is a short in your board just by turning it on. So what should you do?

    Let's get some ideas on how different people would approach this
    situation\!

    - Try to desolder and reinstall the LED facing the right direction,
      which may be more trouble than it's worth
    - Connect a multimeter to P4 to monitor current consumption, which
      would also tell you if there was a short.
    - Wait until the EEPROM is on the board and use the
      software-controlled LED to show what's there (more risky).

??? summary "Do your solder joints make good connections?"

    Solder can be tricky; sometimes, it looks like there's a connection, but
    it actually never got hot enough to melt all the way through.

    Look over all the joints you just made. If you see some that look
    sketchy, try remelting them with the soldering iron, then test again. If
    that still doesn't work, try remelting ALL the joints, and see if that
    does the trick. It just might.
