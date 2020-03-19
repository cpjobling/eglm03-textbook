function [mata] = asymp(a,b,c,d,w)
%ASYMP  Asymptotic bode magnitude response of continuous-time linear systems.
%       [MAG] = ASYMP(A,B,C,D,W)  calculates the asymptotic frequency response 
%       of the system:
%               .
%               x = Ax + Bu                          -1
%               y = Cx + Du             G(s) = C(sI-A) B + D
%
%
%       Vector W must contain the frequencies, in
%       radians, at which the Bode response is to be evaluated.  ASYMP returns
%       matrix MAG with LENGTH(W) rows. MAG is returned in decibels. 
%

%       C.P. Jobling Dingyu Xue 14-02-88
%  	@(#)asymp.m	1.3      

[num,den]=ss2tf(a,b,c,d,1);
%strip off small coefficients of numerator
num=num(abs(num)>1.0e-10);
[zer,pol,k]=tf2zp(num,den);
%strip infinite zeros
zer=zer(zer~=inf);
table = [abs(pol), -1.*ones(length(pol),1)];
table = [table; abs(zer),ones(length(zer),1)];
sort(table);
bode_k=20.*log10(k);
mata=zeros(1,length(w));
%add in contributions from frequency terms
for i=1:length(table)
	break_f = table(i,1);
 	%get points below break frequency
	low_f=w<break_f;
	%get points above
	high_f=~low_f;
        if break_f == 0
		break_f=1;
	else
		bode_k=bode_k+table(i,2)*20.*log10(break_f);
	end
	mata=mata+[zeros(size(w(low_f))),table(i,2)*20*log10(w(high_f)./break_f)];
end
mata=mata+bode_k.*ones(1,length(w));
return