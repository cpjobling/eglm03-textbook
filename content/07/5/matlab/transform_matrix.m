%% Eigenvalues and Eigenvectors
% Examples for lecture on eigenvalues, system transformation
%
% Prepared for EGLM03 Modern Control Systems
% by Dr Chris P. Jobling
%
%% Solution of example 1
 A = [-3 1; 1 -3]
 [T, Lambda] = eig(A)
 
%% Solution of Example 2
Ax = [0, 1, 0; 0, 0, 1; -2, -5, -7];
Bx = [0, 0, 1]';
Cx = [1, 0, 0]; 
%%
% $$w_1 = 2x_1$$
%
% $$w_2 = 3x_1 + 2x_2$$
%
% $$w_3 = x_1 + 4x_2 + 5x_3$$
%
% $$\mathbf{w} = \mathbf{T}^{-1}\mathbf{x}$$
%
Tinv = [2 0 0; 
    3 2 0; 
    1 4 5]
T = inv(Tinv)
%% Transform
Aw = Tinv*Ax*T
Bw = Tinv*Bx
Cw = Cx*T

%% Using control systems toolbox
% Ax, Bx, Cx as previously defined
sysx = ss(Ax, Bx, Cx, 0) % Dx = 0
%% Perform transformation
% |Tinv| as previously defined
sysw = ss2ss(sysx, Tinv)

%% Diagonalization
A = [-3 1; 1 -3]; 
B = [1; 2]; 
C = [2 3];
[T,Lambda] = eig(A)
Adt = inv(T)*A*T
Bdt = inv(T)*B
Cdt = C*T

%% Diagonalization using CST canon function
A = [-3 1; 1 -3]; B = [1; 2]; C = [2 3];
S = ss(A, B, C, 0);
Sp = canon(S, 'modal')

%% Example 4
x0 = [1, 0]';
A = [-3, -2; 1, 0];
B = [1, 0];
% Eigenvalues/eigenvectors
[T,Lamda]=eig(A)
% invT
invT = inv(T)
w0 = invT*x0
%% Calculate Responses
% Using symbolic toolbox
syms t
w = [w0(1)*exp(Lambda(1,1)*t);
     w0(2)*exp(Lamda(2,2)*t)]
x = T*w
%% Responses
subplot(211)
ezplot(x(1),[0,5])
title('Unforced response of x_1(t)')
ylabel('x_1(t)')
xlabel('t [seconds]')
subplot(212)
ezplot(x(2),[0,5])
title('Unforced response of x_2(t)')
ylabel('x_2(t)')
xlabel('t [seconds]')


