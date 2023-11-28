
function restart = drawEndScreen(img, numCrabs, crabsCaught)

  drawMap(img);
  hold on

  textHandle1 = text(1000,1000,'AH! Youve Been NIPPED! You Caught', 'FontSize', 20, 'Color', 'red');

  pause(4)
  delete(textHandle1)
  textHandle2 = text(1100,1000,'would you like to play again?', 'FontSize', 14, 'Color', 'red');


    while(1)
    commandwindow();
    cmd = kbhit(1);
      if (cmd == 'y' || cmd == 'Y')
          restart = 1;
          break
      elseif (cmd == 'n' || cmd == 'N')
          restart = 0;
          break
      endif
      pause(.1)
    endwhile

endfunction
