Function: crabs: no imput -> no output <br>
Dependencies: drawMap and drawCapt <br>
Call: crabs () <br>
Side Effects: it creates the crabs enviornment for the user to play the game crabs. <br>


Function: drawMap: image -> dimensions <br>
Purpose: drawMap takes an image, and creates a backround with the base dimensions of the provided image, with the image set as a backround. <br>
Dependencies: figure(), imgread(), size(img), imshow(), title(), hold on <br>
Call: [height,width] = drawMap(imageName) <br>
Side Effects: None. <br>


Function: drawCapt: number1, number2, number3, number4 -> vector handle <br>
Purpose: it takes number1, which is the x position, number2, which is the y position, number3, which is the heading of the plotted points, <br>
and number4, the size of the captain, and returns a vector of graphics handle called captainGraphics. It takes its inputs from the <br>
crabs function, where xCapt, yCapt, thetaCapt, and sizeCapt are predetermined in the crabs function and entered into this function. <br>
Dependencies: getCapt(), capt(), drawLine(), getRotation(), getTranslate() <br>
Call: captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt) <br>
Side Effects: None <br>


Function: getCapt: number -> matrix <br>
Purpose: getCapt takes the size of the captain in the form of a number, and outputs a matrix that contains columns that represent a point on the captain. <br>
Dependencies: None. <br>
Call: capt = getCapt (captSize) <br> 
Side Effects: None. <br> 


Function: drawLine: vector1, vector2, color -> graphics handle <br>
purpose: drawLine takes 2 vectors and a color of choice, which returns a graphics handle. <br>
drawLine extracts the x and y coordinates from the 2 vectors, and plots the points using <br>
the color of choice, and it creates a handle. <br>
Dependencies: depends on the octave function: plot() and set() <br>
Call: handle = DrawLine (P,Q,myColor) <br> 
Side Effects: None. <br>

Function: getTranslation: number1 number2 -> matrix <br>
purpose: number1 represents the amount to shift in the x direction, and number2 represent the amount to shift in the y direction. <br>
getTranslation uses these numbers to create a 3x3 matrix that will translate an object stored as a 3xN Matrix when it multiplies 
the object. <br>
Dependencies: None. <br>
Call: T = getTranslation (xCapt, yCapt) <br>
Side effects: None. <br>


Function: getRotation: theta -> matrix <br>
Purpose: expects theta as its argument, and produces a matrix that uses theta to multiply the captain's matrix points to produce a rotation. <br>
Dependencies: None. <br>
Call: R = getRotation (theta) <br> 
Side Effects: None. <br>
