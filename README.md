# Skin Spice

Skin Spice is a Minecraft resource pack that allows you to customize your skin a bit more with the help of core shaders.

To adapt your skin to use the features of this resource pack, you need to add a couple things to your skin image.

## Blinking Frame

You must add a frame of your face with closed eyes next to the bottom texture of the head and above the back texture of the head.

## Control Pixels

All of these pixel **must** be fully opaque, meaning they must **not** be transparent at all.

- A pixel located at coordinates [0, 0] (top left) needs to have exactly the values denoted by this HEX color code: `00c0ff`.
- Another pixel located at [1, 0] (to the right of the previous) is used to customize blinking values.
  - The red channel value sets the duration of the first (vanilla) frame of the face. The values is in 1/10th of a second, which means a value of 40 will be 4 seconds.
  - The green channel value sets the duration of the second (custom) frame of the face. The values is in 1/10th of a second, which means a value of 40 will be 4 seconds.
  - The blue channel decides if the animation should be interpolated. If the value is exactly 0, then no interpolation will be done, otherwise the animation will be interpolated.
- Additionally, if you also want to customize the damage tint, a pixel located at [2, 0] is used for that. The color of this pixel is directly used for the color of the damage tint.
