%% Second Order response
% second_resp.m - show how a system response and pole positions change as 
% damping ratio zeta changes

wn = 3;
z = [3, 2.5, 2, 1.5, 1, 0.9, 0.8, 1/sqrt(2), 0.5, 0.4, 0.3, 0.2, 0.1, 0];
for i = 1:length(z)
    zeta = z(i);
    G = tf(wn^2, [1, 2*zeta*wn, wn^2])
    subplot(211),pzmap( G),axis([-20, 1, -4, 4])
    subplot(212),step( G),axis([0,10,0,2])
    disp('any key to continue')
    pause
end

