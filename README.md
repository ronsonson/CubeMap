# CubeMap
An openGL program using GLSL shaders to simulate reflections via cubemapping. 

This project was made as a final project for my Computer Graphics Shaders class at Oregon State University. All of   the boilerplate code was provided for me but all of the GLSL shader core and main program was written myself. 
I got the cubmap image files from Emil Persson, AKA Humus from their personal website, at humus.name.

This project was created as an attempt to try and mimic the reflective/refractive properties of water with waves moving through it. (think of a puddle of water while its raining)

I reccomend running the program with Visual Studio 2022. First open the .sln file, then build the project. After that you should be able to run from the debug menu. 

A couple screenshots of the program running:

![Screenshot 2025-05-08 164911](https://github.com/user-attachments/assets/ab7322d6-00c1-4eb6-8ac3-b4b70238b934)



![Screenshot 2025-05-08 165000](https://github.com/user-attachments/assets/90d77c93-6a63-48dd-8209-32032087605c)

While running the program there are a handuful of keybindings to change the scene:

'a' or 'A' to change the amplitude of noise in the reflection/refraction from a low to high value, respectively.

'e' or 'E' to change the frequency of noise in the reflection/refraction from a low to high value, respectively.

m' or 'M' to change the amount of mixing of reflection and refraction from a low to high value, respectively. low values mean mostly reflection with little refraction.

'W' to turn on the waves, and 'w' to turn the waves off.

't' to reset all scene variables to 0.
