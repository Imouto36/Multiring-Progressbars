This is a simple project in Godot 4.6 showcasing the use of multiple TextureProgressBars, and seamlessly transitioning between them with some simple code.

<br>
<p align="center">
  <img src="/Showcase.gif" />
</p>
<br>

5 TextureProgressBars are layered inside a control node, with semicircular white textures of the appropriate sizes made in Clip Studio Paint, and then tinted to achieve the desired colour. They are then connected with a script which determines their progress value and the breakpoints between transitioning from one progress bar to another. All those parameters are provided as export variables, so the scene can be easily placed in another scene and modified within the editor as per the requirements. Any timer can also be dragged into the Timer Path field and can be used to drive the progress bars.

A sample test scene has also been created showcasing the timer progress scene in action. Simply open the project with Godot and then run it to see how it works.

Best regards,  
Imouto
