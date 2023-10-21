function [xJelly,yJelly,thetaJelly] = moveJelly (level, x, y, theta, size, width, height)

jellyMove = 20;
dStep = jellyMove+level;

  xJelly = x;
  yJelly = y + dStep;
  thetaJelly = theta;

  if (yJelly > height-10*size)
    xJelly = rand*width;
    yJelly = size;
    thetaJelly = theta;
  endif
endfunction
