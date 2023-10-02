function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 900;
thetaCapt = -pi/2;
sizeCapt = 50;
% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)
%*******************************************************

% initialize command

cmd="null";

% creates an infinite loop to keep the game from quitting
% (shift+q will be the keyboard hit to quit the game)
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
 [xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt);


 % afterwards, it draws the "new" captain at its new points
 captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)
endif

endwhile
close all
endfunction

