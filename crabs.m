function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.

% initialize looping command, and have start up screen

[mapHeight , mapWidth] = drawMap("IMG_EX.jpg");

cmd = "null";

while (cmd == "null")
cmd = kbhit();
endwhile

% initialize game map
[mapHeight , mapWidth] = drawMap( "BGImage.png" );


% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 700;
thetaCapt = -pi/2;
sizeCapt = 50;

%initialize the crab location, heading and size
xCrab = 1000;
yCrab = 1200;
thetaCrab = -pi/2;
sizeCrab = 50;

% Draw the captain and crab and initialize graphics handles

captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);
crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);

%*******************************************************



% creates an infinite loop to keep the game from quitting
% (shift+q will be the keyboard hit to quit the game)
cmd = "null";
while(cmd != "Q")


% cmd will read keyboard inputs

cmd = kbhit();
% if the keys w, a, or d, are pressed, it initializes the following:
 if( cmd == "w" || cmd == "a" || cmd == "d")

 % it erases the old captain so there's no duplicates of the captain in the game
 for i=1:length(captainGraphics);
   set(captainGraphics(i),'Visible','off');
 endfor

 % then, it moves captain using the moveCapt function
 [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt,mapWidth,mapHeight,sizeCapt);


 % afterwards, it draws the "new" captain at its new points
 captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

 % responds to a crab movement
  elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd == ",")

  %erases the old crab
    for i=1:length(crabGraphics)
      set(crabGraphics(i), 'Visible','off');
    endfor

    %moves crab
    [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapHeight,mapWidth,sizeCrab);

    %draws new crab
    crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);

endif

endwhile
close all
clear

endfunction

