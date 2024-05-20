%Diagnolisering fra original matrise
%% U = egenvektor
%% D = egen verdi
A = [1 -2;3 -4];
B = [2;-1];
C = [1 -1];
D = 0;
[U, D] = eig(A)
A_Diagonal = inv(U)*A*U
B_Diagonal = inv(U)*B
C_Diagonal = C*U
 

A1 = A
B1 = B
%Matrise 2 er den diagonaliserte matrisene:
A2= A_Diagonal
B2= B_Diagonal

Cm1=ctrb(A1,B1);
Cm2=ctrb(A2,B2);
%finner P som er similarity transformation matrisen
% skriver ut på controller canonical form
P=Cm1*inv(Cm2)