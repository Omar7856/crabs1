
function [numCrabs, numJelly] = setEnemies (level)

  if (level <=3)
    numCrabs = level;
    numJelly = 3;

  elseif (level <= 6)
    numCrabs = level;
    numJelly = 4;

  else
   numCrabs = level;
   numJelly = 5;
  endif


endfunction
