# Step 7: Testing The Controls

Now we need to verify that the buttons and joystick work as advertised.
To do this, we must re-install the Propeller and install the newly added
LM339 quad comparator. We've already verified the that the EEPROM works
from before, so we're not going to do it again.

## Parts Needed

- 1 x Parallax Propeller

  ![](images/13893709.jpg?width=300)

- 1 x LM339 Quad Comparator

  ![](images/15302720.jpg?height=150)

- 1 x Joystick Cap

  ![](images/13893714.jpg?width=150)

## Instructions

1.  Start with a [Power-On Test](../../2-power/7-power-on-test).

2.  Install the Propeller back onto the board.

    ![](images/15302715.jpg?width=500)

3.  You will be installing the LM339 chip into the **U1** socket. Like
    with the other ICs, it has a notch at one end to indicate which
    direction it should be installed.

    ![](images/15302720.jpg?width=250)

4.  Like the Propeller, it's pins are spaced too far apart to fit into
    the narrow IC socket, so the pins need to be bent very slightly.
    However, this chip is quite a bit smaller than the Propeller, so
    it's not as easy.

    ![](images/15302721.jpg?width=500)

5.  Once you've got the fit down, install the chip onto the board.

    ![](images/15302722.jpg?width=500)

6.  Do another power-on test with these both chips installed.

7.  We will be attaching the thumbstick cap temporarily for testing.
    Notice the shape of the hole on the underside of the cap.

    ![](images/15302714.jpg?width=500)

    It fits the joystick in only one direction.

    ![](images/15302717.jpg?width=500)

8.  Attach the thumbstick cap to the joystick.

    ![](images/15302718.jpg?width=500)

9.  To test that you installed the controls correctly, we will load the
    `TakeControl.spin` app. You can load it in the same way that you did
    previously with the ImAlive.spin app (see [Step 5: Testing Code
    Download](../../4-serial/5-testing-code-download)). It can be found
    in `demos/assembly/` in the project folder. This program flashes an
    LED whenever any button is pressed or the joystick is moved.
