addpath(".\functions\") % this line imports
% all functions inside the folder with
% the relative path "./functions/". 
% we use "." to select this current folder

s = tf("s") % define transfer function variable "s"

%numerator
numerator = 1

%denominator
denominator = (s+2)*(s+3)

%transfer function
G = numerator / denominator

%get array of zeros
zeros_array = zero(G)

%get array of poles
poles_array = pole(G)

%get array of asymptote angles from array of poles and array of zeros
[asymptote_array, centroid] = asymptotes(zeros_array, poles_array, true)


rlocus(G)
