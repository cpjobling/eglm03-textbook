%% Vote for value of Cap, L, R
% 
% 
% 

x =10; 
y =10; 
z =10;
%% 
% 

Cap = x * 1000e-6 % 1000s of microF
L = y * 100e-3 % 100s of mH
R = z % Ohm
%% 
% 

A = [0 -1/Cap; 1/L -R/L];
  B = [1/Cap; 0];
  C = [1 0; 0 1; 1 -R; 0 R; 0 -1];
  D = [0; 0; 0; 0; 1];
  circ_ss = ss(A, B, C, D,...
      'StateName',{'v31'; 'i1'},...
      'InputName',{'u'},...
      'OutputName', {'v31'; 'i1'; 'v32'; 'v21'; 'i2'})
%% 
% 

step(circ_ss);
%% 
% 

[Am,Bm,Cm,Dm] = linmod('circuitss')
%% 
% 

step(ss(Am,Bm,Cm,Dm));
%% 
% 

circ_tf = tf(circ_ss)
%% 
% 

eig(A)
%% 
% 

circ_zpk = tf(circ_ss)
%% 
% 

t = linspace(0,1,1000);
u = heaviside(t);
lsim(circ_ss,u,t)
%% 
%