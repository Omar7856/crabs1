
function [xCapt, yCapt, thetaCapt] = moveCapt (cmd,x,y,theta)
  xCapt = x;
  yCapt = y;
  thetaCapt = theta;
 dTheta = pi/6;

  if( cmd == "w")
  %move forward


   elseif ( cmd == "a")
  %rotate left
  thetaCapt = theta - dTheta;

   elseif (cmd == "d")
  %rotate right

    thetaCapt = theta + dTheta;
  endif

endfunction
