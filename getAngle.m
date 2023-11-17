function theta = getAngle (xNet, yNet, xCrab, yCrab)
  %finds the angle of the net relative to the crab to find an angle
  xDanger= xNet - xCrab;
  yDanger= yNet - yCrab;

   %case for on the axis
  if (xDanger == 0 || yDanger == 0)

    if(xDanger == 0 && yDanger == 0) %if at origin
      theta = 0;
    elseif (xDanger == 0 && yDanger != 0)%if on y axis
      if(yDanger >0)
        theta = pi/2;
      else
        theta = 3*pi/2;
      endif
    elseif(xDanger!= 0 && yDanger ==0) %if on x Axis
      if(xDanger >0)
        theta = 0;
       else
        theta = pi;
      endif
    endif

  else % cases for off-axis points
   alpha = atan(abs(yDanger/xDanger));
    if(xDanger >0 && yDanger >0) %quadrant 1
      theta = alpha;
    elseif(xDanger<0 && yDanger >0) %quadrant 2
      theta = pi - alpha;
    elseif(xDanger<0 && yDanger<0) %quadrant 3
      theta = pi + alpha;
    else % quadrant 4
      theta = 2*pi - alpha;
   endif
endif

endfunction
