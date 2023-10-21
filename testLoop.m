
function testLoop ()


while (1)
  cmd = kbhit(1)
  if (cmd == "Q")
    break;
  endif
  fflush(stdout);
  pause(.01);

 endwhile

endfunction
