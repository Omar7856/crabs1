




Function: drawLine: vector, vector, color -> graphics handle <br>
purpose: drawLine takes 2 vectors and a color, 

Function: getTranslation: number1 number2 -> matrix <br>
purpose: number1 represents the amount to shift in the x direction, and number2 represent the amount to shift in the y direction. <br>
getTranslation uses these numbers to create a 3x3 matrix that will translate an object stored as a 3xN Matrix when it multiplies 
the object. <br>
Dependencies: None. <br>
Call: T = getTranslation (xCapt, yCapt) <br>
Side effects: None. 
