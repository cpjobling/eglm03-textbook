
G = tf(1,conv([1 1],[5 1]));  

H=tf(1,1); 

GH=G*H 

clf, sgrid(1/sqrt(2),0.25:0.25:2), hold on, rlocus(GH),hold off 

zeta = 1/sqrt(2); wn=2;  
s1 = -zeta*wn+j*wn*sqrt(1-zeta^2)  

Ki=20; 

m_s1=abs(s1),  p_s1 = angle(s1)*180/pi % degrees  

[numGH,denGH] = tfdata(GH,'v');
GHs1=polyval(numGH,s1)/polyval(denGH,s1)   

mGHs1=abs(GHs1) 

pGHs1=-angle(GHs1)*180/pi - 90 % degrees

beta = p_s1*pi/180; psi = pGHs1*pi/180;  % radians

Kprop = (-sin(beta+psi))/(mGHs1*sin(beta)) - (2*Ki*cos(beta)/m_s1)  

Kd = (sin(psi)/(m_s1*mGHs1*sin(beta))) + Ki/(m_s1^2)  

D = tf([Kd, Kprop, Ki],[1, 0]) 

Go=D*GH  

DG = D*G  
Gc = feedback(DG,H)  

step(Gc) 
