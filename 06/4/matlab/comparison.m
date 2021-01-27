%% Digital compensator
p = 5; % rad/s
ds = tf([p], [1 p])
Fs = (20*p)/(2*pi); % Hz
Ts = 1/Fs;
dz = c2d(ds, Ts, 'zoh')
step(ds,'-',dz,'--')


%% Compare digital equivalents
ds = tf(5, [1 5])
bode(ds)
grid

%% fs = 15 Hz
Fs = 15;
Ts = 1/Fs;
% Hold equivalent
dsz=c2d(ds, Ts, 'zoh')
% Tustin equivalent
dst = c2d(ds, Ts, 'tustin')
% Matched pole-zero
dsm = c2d(ds, Ts, 'mpz')
% Make Bode plot
bode(ds,dsz,'*',dst,'+',dsm,'o')
grid
legend('D(jw)','ZOH','Tustin','MPZ')
title('Magnitude and phase of discrete equivalents for D(s) = 5/(s+5) - Fs = 15 Hz')


%% fs = 5 Hz
Fs = 5;
Ts = 1/Fs;
% Hold equivalent
dsz=c2d(ds, Ts, 'zoh')
% Tustin equivalent
dst = c2d(ds, Ts, 'tustin')
% Matched pole-zero
dsm = c2d(ds, Ts, 'mpz')
% Make Bode plot
bode(ds,dsz,'*',dst,'+',dsm,'o')
grid
legend('D(jw)','ZOH','Tustin','MPZ')
title('Magnitude and phase of discrete equivalents for D(s) = 5/(s+5) - Fs = 5 Hz')
