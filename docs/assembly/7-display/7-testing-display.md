# Step 7: Testing The Display

We haven't installed the battery pack yet, so we're not going to screw
in the LCD just yet. Let's mount it to the socket real quick to make
sure we didn't break anything.

## Instructions

1.  Power-on test. Make sure the green light comes on. If you get past
    this stage, you're in great shape.

    ![](images/16744470.jpg?width=500)

2.  Power OFF your LameStation.

3.  Line up the pins on the LCD with the **P1** socket installed
    previously.

    ![](images/16744468.jpg?width=500)

4.  Press the LCD down to seat it temporary. Don't worry about securing
    it; this is just for test.

    ![](images/16744469.jpg?width=500)

5.  Plug in the LCD and do another power-on test. You should see the
    backlight come on.

    ![](images/16744471.jpg?width=500)

6.  Play with the LCD contrast knob. You should see the pixels on the
    screen vary smoothly from black to white.

    ![](images/16744472.jpg?width=500)

7.  Power OFF your LameStation once again, then install the Propeller
    chip and LM386 chip back onto the board.

    !!! warning "Careful not to bend the pins!"

8.  Power ON your LameStation and open a demo application in the
    `demos/graphics` directory (I recommend SpriteDemo.spin) and
    download it to the LameStation into RAM.

    ![](images/20578330.png?width=500)

9.  Your screen should now be displaying some graphics.

    ![](images/17367050.png?width=500)

10. Remove the LCD as we still have one more thing to do before we
    attach it permanently. Pull it from near the header, otherwise you
    may put stress on the connector.
