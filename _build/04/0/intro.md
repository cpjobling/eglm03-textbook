---
redirect_from:
  - "/04/0/intro"
interact_link: content/04/0/intro.ipynb
title: 'Introduction to PID Compensation'
prev_page:
  url: /04/pid
  title: 'PID Compensation'
next_page:
  url: /04/1/zeigler
  title: 'Zeigler-Nichols Tuning Algorithms'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

# Introduction to PID Compensation

PID compensators are very widely used in industry, particularly for process 
control applications. Given a system with feedback signal $e(t)$, the PID 
compensated control signal is

$$\begin{equation}
u(t)=K_{\mathrm{prop}}\left(e(t)+\frac{1}{T_I}\,\int_{0}^{t}e(\tau)d\tau+T_D\,\frac{de(t)}{dt}\right)
\end{equation}$$                                                                                            

where 

| Gain | Comment |
|------|---------|
| *K*<sub>prop</sub> | proportional gain     |
| *T<sub>I</sub>*             | integral time (s)     |
| 1/*T<sub>I</sub>*           | reset rate (repeat/s) |                       
| *T<sub>D</sub>*             | derivative time (s)   |

The Laplace transform of the PID equation is:

$$\begin{equation}
U(s)=K_{\mathrm{prop}}\left(E(s)+\frac{1}{T_I s}\,E(s)+sT_D\,E(s)\right)
\end{equation}$$  
                                                                             
so that

$$\begin{equation}
D_{\mathrm{PID}}(s)=\frac{U(s)}{E(s)}=K_{\mathrm{prop}}\left(1+\frac{1}{T_I 
s}+sT_D\right)
\end{equation}$$ 

Commercial compensators are provided with setting controls for each of 
the three parameters $K_{\mathrm{prop}$, $T_I$and $T_D$. They can also be used 
with and without the integral and derivative terms. The common configurations 
for the PID compensator are:

### Proportional only

$$\begin{equation}D_{\mathrm{P}}(s)=K_{\mathrm{prop}}\end{equation}$$                                                            
This type of compensation can be used when dynamic compensation is not 
needed to achieve the required steday-state acuracy and transient performance. 
In general, larger values of poportional gain reduce steady-state errors and 
rise times but tend to increase the size and number of overshoots and setting 
time.

### Proportional plus Derivative (P+D)

$$\begin{eqnarray}D_{\mathrm{P+D}}(s) &=& K_{\mathrm{prop}}\left(1+sT_D\right)\\
&=& K_{\mathrm{prop}}T_D\,\left(s+1/T_D\right)\end{eqnarray}$$

This configuration adds a zero to the proportional only compensator. This zero is used to increase the system damping thereby improving stability and reducing settling time. The cascade zero may cause a small reduction in rise 
time and an increase in the size of the first overshoot. Note that derivative action is _never _used alone!

### Proportional plus Integral (P+I)

Integral action may be used alone and its effect is to increase the system type number by 1. That is it makes a type 0 system type 1 and eliminates steady-state step errors<sup>1</sup>. However, it is more common to the integral action added with proportional gain in the proportional plus integral confuguration:

$$\begin{eqnarray}D_{\mathrm{P+I}}(s) &=& K_{\mathrm{prop}}\left(1+\frac{1}{T_I s}\right)\\
&=& K_{\mathrm{prop}}\left(\frac{s+1/T_I}{s}\right)\end{eqnarray}$$ 

This raises the system type number by 1 and also adds a zero which can 
offset the destabilising effect of the additional pole. A typical use of this 
zero would be to cancel the lowest-frequency system pole to allow a faster closed-loop 
response.

### Full Proportional-Integral-Derivative (PID)

$$\begin{equation}D_{\mathrm{PID}}(s)=K_{\mathrm{prop}}\left(\frac{T_D\,s^2+s+1/T_I}{s}\right)\end{equation}$$

The PID compensator raises the system type number by 1. It also introduces two zeros which can be used to improve the transient response. Root locus methods can be used to locate these zeros in order to satisfy the steady-state and transient response requirements of a design. We shall illustrate the [Zeigler-Nicjols method](../1/zeigler) next. There is also an [analytical technique](../3/analpid) for achieving a specified steady-state error performance and defined dominant poles. In industrial practice, however, it is quite common to tune a PID compensator "in the loop" and this is discussed in a companion document ([Tuning a PID Compensator](../2/tuning)). The tuning rules are essentially summarised 
as:

1. Choose $K_{\mathrm{prop}}$ to achieve the required speed of response.
2. Choose the reset rate $1/T_I$ to achieve desired steady-state performance (may need to re-tune $K_{\mathrm{prop}}$)
3. Add derivative action to reduce overshoots and improve settling time.

The effect of the parameters may be summarised as

1. Increasing reset rate and proportional gain increases the speed of response and reduces the steady-state error.
2. Increasing reset rate reduces stability.
3. Increasing derivative time increases stability.
