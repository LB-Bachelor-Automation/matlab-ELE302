function [asymptote_array, centroid] = asymptotes(zeros_array,poles_array, degrees)
    %ASYMPTOTES:
    %   Calculate asymptotes and centroid for a root locus plot.
    %   [asymptote_array, centroid] = asymptotes(zeros_array, poles_array, degrees)
    %   computes the asymptotes and centroid for a given system with poles
    %   and zeros.
    %
    %   INPUT ARGUMENTS:
    %       zeros_array - A column vector containing the zeros of the system.
    %       poles_array - A column vector containing the poles of the system.
    %       degrees - A boolean value indicating whether the asymptotes should
    %                 be calculated in degrees (true) or radians (false, default).
    %
    %   OUTPUT ARGUMENTS:
    %       asymptote_array - An array containing the angles of the asymptotes.
    %                         If there are no asymptotes, this is empty.
    %       centroid - The centroid where the asymptotes intersect the real axis.
    %                  If there are no asymptotes, this is empty.
    
    arguments
        zeros_array (:,1)
        poles_array (:,1)
        degrees (1,1) logical = false
    end
    
    %m = lengths of poles_array
    m = length(poles_array);
    %n = length of zeros_array
    n = length(zeros_array);
    
    a = m-n;
    abs_a = abs(a);

    q = 0:1:abs_a-1;
    
    if degrees
        half_circle = 180;
    else
        half_circle = pi;
    end

    if abs_a > 0
        asymptote_array = half_circle*(2*q+1)/abs_a;
        centroid = (sum(poles_array) - sum(zeros_array))/a;
    else
        asymptote_array = [];
        centroid = empty;
    end
end

