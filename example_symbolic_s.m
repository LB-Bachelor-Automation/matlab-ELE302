addpath(".\functions\") % this line imports
% all functions inside the folder with
% the relative path "./functions/". 
% we use "." to select this current folder

syms s % define symbolic variable "s"

%numerator
numerator = 1

%denominator
denominator = (s+2)*(s+3)

%transfer function
G = numerator / denominator

break_points(G,s)
