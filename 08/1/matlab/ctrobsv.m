%% System Controllability and Observability
% Examples for the Lecture
% 
% Prepared for EGLM03 Modern Control Systems by Chris P. Jobling
%% System

A = [-6 -5; 1 0]
B = [1 0]'
C = [3 1]
%% Controllability
%% Longhand
%%
CM = [B, A*B]
rank(CM)
%% With function
%%
CM = ctrb(A, B)
rank(CM)
%% By diagonalization
%%
[T,Lamda] = eig(A)
Tinv = inv(T)
%% 
% $\mathbf{T}^{-1}\mathbf{B}$ should have no zero rows

Bx = Tinv*B
%% Observability
%% Long hand
%%
OM = [C' A'*C']
rank(OM)
%% With function
%%
OM = obsv(A, C)
rank(OM)
%% Observability by diagonlization
% $\mathbf{CT}$ should have no zero columns
%%
Cx = C*T
%% With LTI Models
%%
sys = ss(A, B, C, []);
OM = obsv(sys)
CM = ctrb(sys)