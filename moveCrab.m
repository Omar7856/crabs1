function [xCrab, yCrab, thetaCrab] = moveCrab (cmd,x,y,theta,height,width,size)

dTheta = pi/6;
dStep = 35;

% rotate right
if (cmd == "i")
  xCrab = x;
  yCrab = y;
  thetaCrab = theta + dTheta;

    %move left
elseif (cmd == "j")
    xTemp = x + dStep*sin(theta);
    yTemp = y - dStep*cos(theta);
    if(isOnMap(xTemp,yTemp, width,height,size))
    xCrab = xTemp;
    yCrab = yTemp;
    thetaCrab = theta;
  else
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;
  endif
% move backwards
elseif (cmd == "k")
   xTemp = x - dStep*cos(theta);
   yTemp = y - dStep*sin(theta);
    if(isOnMap(xTemp,yTemp,width,height,size));
      xCrab = xTemp;
      yCrab = yTemp;
      thetaCrab = theta;
  else
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;
  endif

  %move right
elseif (cmd == "l")
  xTemp = x - dStep*sin(theta);
  yTemp = y + dStep*cos(theta);
    if(isOnMap(xTemp,yTemp,width,height,size))
    xCrab=xTemp;
    yCrab=yTemp;
    thetaCrab = theta;
  else
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;
 endif

 elseif (cmd == ",")
 xCrab = x;
 yCrab = y;
 thetaCrab = theta - dTheta;

endif

endfunction
