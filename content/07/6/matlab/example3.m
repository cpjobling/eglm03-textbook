%% Generalized System Response
% Example 3: Matlab Solution. Find system response using Laplace. Uses the symbolic 
% toolbox function |ilaplace| to solve:
% 
% $$x(t) = \mathcal{L}\left\{ {{{(s{\mathbf{I}} - {\mathbf{A}})}^{ - 1}}{{\mathbf{x}}_0}+ 
% {{(s{\mathbf{I}} - {\mathbf{A}})}^{ - 1}}{\mathbf{B}}U(s)} \right\}$$
%% Define state-space equations

A = [-3 -2
1 0]
%%
B = [1
0]
%%
x0 = [1 1]';
%%
syms s t
Us = 1/s
Xs = inv(s*eye(2) - A)*x0 + inv(s*eye(2) - A)*B*Us
%%
x = ilaplace(Xs)
%% Print it nicely
% For m-file only!
%%
pretty(x)
%% Plot response
%%
subplot(211)
ezplot(x(1),[0,3])
title('x_1(t)')
subplot(212)
title('x_2(t)')
ezplot(x(2),[0,3])