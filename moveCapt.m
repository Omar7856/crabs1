
function [xCapt, yCapt, thetaCapt] = moveCapt (cmd,x,y,theta,width,height,size)

  dTheta = pi/6;
  dStep = 50;
  sprintStep = 100;

if( cmd == "w")

    %move forward
    xTemp = x + dStep*cos(theta);
    yTemp = y + dStep*sin(theta);

   if(isOnMap(xTemp,yTemp,width,height,size))
      xCapt=xTemp;
      yCapt=yTemp;
      thetaCapt = theta;
    else
      xCapt = x;
      yCapt = y;
      thetaCapt = theta;
   endif

  elseif (cmd == "s")
    xTemp = x + sprintStep*cos(theta);
    yTemp = y + sprintStep*sin(theta);

    if(isOnMap(xTemp,yTemp,width,height,size))
      xCapt=xTemp;
      yCapt=yTemp;
      thetaCapt = theta;
   else
      xCapt = x;
      yCapt = y;
      thetaCapt = theta;
    endif



elseif ( cmd == "a")
    %rotate left
     xCapt = x;
     yCapt = y;
     thetaCapt = theta - dTheta;

elseif (cmd == "d")
    %rotate right
     xCapt = x;
     yCapt = y;
     thetaCapt = theta + dTheta;

 else
  % default case
    xCapt = x;
    yCapt = y;
    thetaCapt = theta;
endif

endfunction
