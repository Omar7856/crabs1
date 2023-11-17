function [level] = drawStartScreen(imageName)
%clear any current figures
clf

%create game figure
figure(1);

% shows the image on the screen
imshow(imageName);

% IMG size of START-SCREEN.png: 3980 x 2266
% locations for text handles
crabTextLoc = [1240, 1600];
levelLoc = [1140, 1780];

% presents all the text onto the start screen
crabText = text(crabTextLoc(1), crabTextLoc(2),'Your Ships Been Wrecked By The Crab Beast!', 'FontSize', 30, 'Color', 'red');
levelExp = text(levelLoc(1), levelLoc(2),'Quick, Enter Your Level 1 Though 9 And Collect All Your Crabs Before Youre Nipped!', 'FontSize', 25, 'Color', 'red');



% creates a while loop that will accept only 1 - 9 kbhits to set the level
  while (1)
    commandwindow();  % shifts the focus of the command window
    userInput = kbhit(1);
   if (userInput == '1' || userInput == '2' || userInput == '3' || userInput == '4' || userInput == '5' || userInput == '6' || userInput == '7' || userInput == '8' || userInput == '9')
     level = str2num(userInput);
     break
   endif
   pause(.1);
  endwhile



%level = str2num(userInput);




%put a title on the figure
% title("Crabs");


endfunction
