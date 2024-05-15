function [break_point_array] = break_points(G, s)
    %BREAK_POINTS Calculate the breakaway and break-in points of a root locus plot.
    %   [break_point_array] = break_points(G, s) computes the breakaway and 
    %   break-in points of the given transfer function G(s) with respect to the 
    %   complex variable s.
    %
    %   INPUT ARGUMENTS:
    %       G - The transfer function G(s) for which the break points are to be calculated.
    %       s - The complex variable of the transfer function G.
    %
    %   OUTPUT ARGUMENTS:
    %       break_point_array - An array containing the calculated breakaway and break-in points.
    %                           These are the points on the real axis where the root locus 
    %                           branches either converge or diverge.
    
    % Calculate the breakaway and break-in points by solving the equation 
    % d(-1/G(s))/ds = 0 for s
    break_point_array = solve(diff(-1/G) == 0, s);
end
