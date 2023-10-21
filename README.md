Function: crabs: no imput -> no output <br>
Dependencies: drawMap(), drawCapt(), drawCrab(), moveCapt(), moveCrab() <br>
Call: crabs () <br>
Side Effects: it creates the crabs enviornment for the user to play the game crabs. <br>


Function: drawMap: image -> figure  <br>
Purpose: drawMap takes an image, and creates a figure with the dimensions of the provided image, and sets the image as a backround. <br>
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

Function: isOnMap: num1, num2, num3, num4, num5  -> number <br>
Purpose: expects num1, the x position of the crab or captain, num2, the y position of the crab or captain, num3, the width of the map, num4, <br>
the height of the map, and num5, the size of the crab or captain, and returns 1 if the new x and y are within the map, <br>
or it returns 0 if the new x and y is not within the map. <br>
Dependencies: None. <br>
Call: mapCheck = isOnMap (x, y, width, height,size) <br>
Side Effects: None. <br>

Function: moveCapt: string, num1, num2, num3, num4, num5, num6 -> vector <br>
Purpose: expects a keystroke, the x and y position of the captain, the heading of the captain, the width and height <br>
of the map, and the size of the captain, and returns a vector that has the new x and y coordinates and heading of the captain. <br>
Dependencies: isOnMap() <br>
Call: [xCapt, yCapt, thetaCapt] = moveCapt (cmd,x,y,theta,width,height,size) <br>
Side Effects: None. <br>

Function: moveCrab: string, num1, num2, num3, num4, num5, num6 -> vector <br>
Purpose: expects a keystroke, the x and y position of the crab, the heading of the crab, the width and height <br>
of the map, and the size of the crab, and returns a vector that has the new x and y coordinates and heading of the crab. <br>
Dependencies: isOnMap() <br>
Call: [xCrab, yCrab, thetaCrab] = moveCrab (cmd,x,y,theta,height,width,size) <br>
Side Effects: None. <br>

Function: drawCrab: number1, number2, number3, number4 -> vector handle <br>
Purpose: it takes number1, which is the x position, number2, which is the y position, number3, which is the heading of the plotted points, <br>
and number4, the size of the crab, and returns a vector of graphics handle called H. It takes its inputs from the crabs function, where xCrab, yCrab, thetaCrab, and sizeCrab are predetermined in the crabs function and entered into this function. <br>
Dependencies: getCrab(), getRotation(), getTranslation(), drawLine() <br>
Call: h = drawCrab (xCrab,yCrab,thetaCrab,sizeCrab) <br>
Side Effects: None.  <br>

Function: getCrab: number -> matrix <br>
Purpose: expects the size of the crab, and returns a matrix of points, and each collum represents a point on the crab <br>
Dependencies: None. <br>
Call: crab = getCrab (size) <br> 
Side Effects: None <br>
