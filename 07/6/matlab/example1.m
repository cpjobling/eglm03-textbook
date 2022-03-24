%% Generalized System Response
% Example 1: Matlab Solution. Uses the symbolic toolbox: in particular matrix 
% exponetial |exmp| and integral |int|.
% 
% To solve:
% 
% $${\mathbf{x}}(t) = {e^{{\mathbf{A}}t}}{{\mathbf{x}}_0} + \int_0^t{{e^{{\mathbf{A}}(t 
% - \tau )}}} {\mathbf{B}}u(\tau )\;d\tau $$
%% Define state-space equations

A = [-3 -2
1 0]
%%
B = [1
0]
%%
[T,L] = eig(A)
%%
Tinv = inv(T)
%% Modified state equations

Ax = Tinv*A*T
%%
Bx = Tinv*B
%% Set up symbolic problem

syms t tau
phi(t) = expm(A*t)
%% Compute term 1

x0 = [1 1]';
term1 = phi(t)*x0
%% Compute term2

term2 = int(phi(t - tau)*B*1,tau,0,t)
%% Form total response

x = term1 + term2
%% Simplify result

expand(x)
%% Print it nicely
% for m-file

pretty(ans)
%% Plot response

subplot(211)
fplot(x(1),[0,3])
title('x_1(t)'),grid,xlabel('t')
subplot(212)
fplot(x(2),[0,3])
title('x_2(t)'),grid,xlabel('t')