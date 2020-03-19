% POLE2ND - 2nd Order response with a pole

echo on
clf
wn = 10;
zeta = 0.7;
t = 0:0.01:2;
s = tf('s');
Tc = tf(1/((s/wn)^2 + 2*zeta*(s/wn) + 1))
[c]=step(Tc,t);
plot(t,c,'r-')
title('Effect of an additional pole on model 2nd order response')
ylabel('Controlled variable C(t)')
xlabel('Normalised time wn t')
hold on

for alpha = [100,50,10,8,6,4,3,2,1.5,1,0.5]
   T2 = tf(1/((s/(alpha*zeta*wn)+1)*((s/wn)^2 + 2*zeta*(s/wn) + 1)));
   [c,t]=step(T2,t);
   if (alpha == 4)
      plot(t,c,'g*')
   end
   plot(t,c,'b-')
end
