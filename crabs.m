function crabs()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.

restart = 1;
while(restart)

  %have start up screen
  level = drawStartScreen("START-SCREEN.png");


  [numCrabs, numJelly] = setEnemies(level);

  %initialize game map
  [mapHeight , mapWidth] = drawMap( "BGImage.png" );


% Initialize captain location, heading and size
  xCapt = 1000;
  yCapt = 700;
  thetaCapt = -pi/2;
  sizeCapt = 50;
  healthCapt=100;
  crabsCaught=0;

%initialize the crab location, heading and size
  xCrab = rand(1,numCrabs)*mapWidth;
  yCrab = 0.75*mapHeight + rand(1,numCrabs)*mapHeight/4;
  thetaCrab = ones(1,numCrabs)*(-pi/2);
  isCrabCaught = zeros(1,numCrabs);
  sizeCrab = 50;


% initialize the jellyfish location, heading and size
  xJelly = rand(1, numJelly)*mapWidth;
  yJelly = rand(1, numJelly)*mapHeight;
  thetaJelly = ones(1,numJelly)*(-pi/2);
  sizeJelly = 25;
  jellySting = 2;



% Draw the captain and crab and initialize graphics handles

  [captainGraphics,xNet,yNet] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

  % draws the crabs
  for j=1:numCrabs
    if(!isCrabCaught(j))
      crabGraphics(:,j) = drawCrab (xCrab(j), yCrab(j), thetaCrab(j), sizeCrab);
    endif

  endfor

  for k=1:numJelly
    jellyGraphics(:,k) = drawJelly (xJelly(k), yJelly(k), thetaJelly(k), sizeJelly);
  endfor
%*******************************************************

% prints the health status and crabs caught to the screen
  healthLoc = [100,100];
  crabsCaughtLoc = [100,175];
  levelLoc = [100, 250];
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
  num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
  crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), ...
  strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');
  levelStatus = text(levelLoc(1),levelLoc(2), strcat('Level:  ', num2str(level)),'FontSize', 12, 'Color', 'red');


cmd = "null";

while(1)
    commandwindow();  % keeps the main focus on the window
    cmd = kbhit(1);
  if (cmd == 'Q' || crabsCaught == numCrabs)
    % restart = 0;
    break;
  endif
% creates an infinite loop to keep the game from quitting
% (shift+q will be the keyboard hit to quit the game)

% remove the old status and refreshes the new status of the captain's health and points

delete(healthStatus);
delete(crabsCaughtStatus);

  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
  num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
  crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2),
  strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


% jellyfish stuff
 for k=1:numJelly
   %delete old jellyfish
  for i=1:length(jellyGraphics(:,k))
    delete(jellyGraphics(i,k));
  endfor

  % move jellyfish
  [xJelly(k), yJelly(k), thetaJelly(k)] = moveJelly(level,xJelly(k),yJelly(k),thetaJelly(k),sizeJelly,mapWidth,mapHeight);

  %draw Jellyfish
  jellyGraphics(:,k) = drawJelly(xJelly(k),yJelly(k),thetaJelly(k),sizeJelly);

  %endfor
  % jellyfish sting code

   %for k=1:numJelly

    if(getDist(xJelly(k),yJelly(k),xCapt,yCapt) < 3*sizeCapt)
      healthCapt = healthCapt - jellySting;

      % ends the game if the captain's health is at 0
        if (healthCapt <= 0)
          break
        endif
    endif
  endfor


% if the keys w, a, or d, are pressed, it initializes the following:
 if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s")

 % it erases the old captain so there's no duplicates of the captain in the game
 for i=1:length(captainGraphics);
   delete(captainGraphics(i));
 endfor

 % then, it moves captain using the moveCapt function
 [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);


 % afterwards, it draws the "new" captain at its new points
 [captainGraphics,xNet,yNet] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

endif

  for j=1:numCrabs
    if (!isCrabCaught(j) && getDist(xNet,yNet,xCrab(j),yCrab(j)) < 7*sizeCapt) %make Crabs Run

    %erase the old crab
      for i=1:length(crabGraphics(:,j))
        delete(crabGraphics(i,j));
      endfor
    % get the crab's new angle (pointing towards the net)
    thetaCrab(j) = getAngle(xNet, yNet, xCrab(j), yCrab(j));

    %moves the crab backwards
    cmd = "k";
    [xCrab(j),yCrab(j),thetaCrab(j)] = moveCrab(cmd,xCrab(j),yCrab(j),thetaCrab(j),mapHeight,mapWidth,sizeCrab);
    %draws new crab
    crabGraphics(:,j) = drawCrab(xCrab(j),yCrab(j),thetaCrab(j),sizeCrab);
    endif
  endfor


 % responds to a crab movement
 % elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd == ",")

  %erases the old crab
    %for i=1:length(crabGraphics)
      %delete(crabGraphics(i));
   % endfor

    %moves crab
    %[xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapHeight,mapWidth,sizeCrab);

    %draws new crab
    %crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
  for j=1:numCrabs
   if(!isCrabCaught(j) && getDist(xNet, yNet, xCrab(j), yCrab(j)) < 2*sizeCapt)
   % keeps track of the number of crabs caught

    crabsCaught = crabsCaught + 1;

    isCrabCaught(j)=1;
    crabsCaught = sum(isCrabCaught);
     % erase the old crab
      for i=1:length(crabGraphics(:,j))
        delete(crabGraphics(i,j));
      endfor

     %create new crab with new location, and same heading and size
  %   xCrab = rand*mapWidth;
   %  yCrab = rand*mapHeight;
   %  thetaCrab = -pi/2;
   %  sizeCrab = 50;

     %draw crab
    % crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

    endif
  endfor

fflush(stdout);
pause(.01);

endwhile


restart = drawEndScreen("START-SCREEN.png", numCrabs, crabsCaught);

endwhile
clear
close all

endfunction
