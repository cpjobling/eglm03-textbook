% REDUCE - illustrate dominant poles and order reduction

clf
clc
sigma = 1;
wd = 1;
disp('Full order system')
zeros = [-6*sigma; -3.2*sigma]
poles = [-9*sigma
   -7*sigma+j*2*wd
   -7*sigma-j*2*wd
   -3*sigma
   -2*sigma
   -sigma+j*wd
   -sigma-j*wd]
g = zpk(zeros,poles,prod(abs(poles))/prod(abs(zeros)));
subplot(121)
pzmap(poles,zeros)
subplot(122)
step(g)
disp('Press any key to continue')
pause, clc
% now remove redundant terms
disp('1. remove high frequency pole at -9*sigma')
z1 = zeros
p1 = poles(2:7)
g1 = zpk(z1,p1,prod(abs(p1))/prod(abs(z1)));
subplot(121)
pzmap(p1,z1)
subplot(122)
step(g,g1)
disp('Press any key to continue')
pause, clc
disp('2. remove complex hf pole pair')
z2 = z1
p2 = p1(3:6)
g2 = zpk(z2,p2,prod(abs(p2))/prod(abs(z2)));
subplot(121)
pzmap(p2,z2)
subplot(122)
step(g,g1,g2)
disp('Press any key to continue')
pause, clc
disp('3. remove hf zero')
z3= z2(2)
p3 = p2
g3 = zpk(z3,p3,prod(abs(p3))/prod(abs(z3)));
subplot(121)
pzmap(p3,z3)
subplot(122)
step(g,g1,g2,g3)
disp('Press any key to continue')
pause, clc, clc
disp('4. remove pole-zero cancellation terms')
z4= []
p4 = p3(2:4)
g4 = zpk(z4,p4,prod(abs(p4))/prod(abs(z4)));
subplot(121)
pzmap(p4,z4)
subplot(122)
step(g,g1,g2,g3,g4)
disp('Press any key to continue')
pause, clc
disp('5. remove last non-dominant pole')
z5 = z4
p5 = p4(2:3)
g5 = zpk(z5,p5,prod(abs(p5))/prod(abs(z5)));
subplot(121)
pzmap(p5,z5)
subplot(122)
step(g,g1,g2,g3,g4,g5)
disp('Press any key to continue')
pause, clc
disp('Original system')
g
disp('Reduced order system')
g4
subplot(221)
pzmap(poles,zeros)
subplot(222)
step(g)
subplot(223)
pzmap(p4,z4)
subplot(224)
step(g,g4)



