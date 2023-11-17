
function restart = drawEndScreen (img, numCrabs, crabsCaught)

  drawMap(img)
  hold on

  testHandle1 = text('AH! Youve Been NIPPED! You Caught'

    pause (4)
  erase(textHandle1)
  testHandle2 = text('would you like to play again?'


    while(1)
    commandwindow();
    cmd = kbhit(1);
      if (cmd == 'y' || cmd == 'Y')
          reset = 1;
          break
      elseif (cmd == 'n' || cmd == 'N')
          reset = 0;
          break
      endif

    endwhile

endfunction
