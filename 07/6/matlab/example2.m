%% Generalized System Response
% Example 3: Matlab Solution. Find system response using system diagonalization. 
% Uses system trabsformation and the symbolic toolbox function |expm| to solve:
% 
% $$\begin{array}{l}{\bf{w}} = {{\rm T}^{ - 1}}{\bf{x}}\\\Lambda  = {{\rm T}^{ 
% - 1}}{\bf{AT}}\\\frac{d}{{dt}}{\bf{w}} = \Lambda {\bf{w}} + {{\bf{T}}^{ - 1}}u\end{array}$$
%% Define state-space equations

A = [-3 -2
1 0];
%%
B = [1
0];
%%
x0 = [1 1]';
%%
T = [1 1; -1 -1/2];
%%
Tinv = inv(T);
%% Modified state equations

Ax = Tinv*A*T
%%
Bx = Tinv*B
%% Solve symbolically

syms t tau
phi(t) = expm(Ax*t)
w0 = Tinv*x0
%% Initial condition response

w1 = phi(t)*w0
%% Forced response

w2 = int(phi(t-tau)*Bx,tau,0,t)
%% Total response

w = w1 + w2
%% System response
% Since:
% 
% $${\mathbf{x}} = {\mathbf{Tw}}$$

x = T*w
%% Print it nicely
% for m-file only!

pretty(x)
%% Plot response

subplot(211)
fplot(x(1),[0,3])
title('x_1(t)'),grid,xlabel('t')
subplot(212)
fplot(x(2),[0,3])
title('x_2(t)'),grid,xlabel('t')