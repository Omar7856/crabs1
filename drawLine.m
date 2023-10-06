%{
drawLine draws a line from point P to point Q with a color of choice
%}

function handle = drawLine (P,Q,myColor)


% extracts the x coordinates

x=[P(1) ; Q(1)];

% extracts the y coordinates
y=[P(2) ; Q(2)];
%
handle = plot(x,y,myColor);

% changes the thickness of the line

set(handle, "LineWidth", 3)

endfunction
