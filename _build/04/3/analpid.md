---
redirect_from:
  - "/04/3/analpid"
interact_link: content/04/3/analpid.ipynb
title: 'Analytical Design of a PID Compensator'
prev_page:
  url: /04/2/tuning
  title: 'Manually Tuning a PID compensator'
next_page:
  url: /05/freqresp
  title: 'Frequency Response Design'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

## Analytical Design of a PID Compensator

This section presents an analytical procedure for PID compensator design. It is based on Section 7.11 of Phillips and Harbor *Feedback_ Control Systems*, Prentice Hall, 1988<sup>[1]</sup>. 

The compensator transfer function is assumed to be

$$\begin{equation}D(s)=\frac{K_Ds^2 + K_\mathrm{prop}\;s+K_I}{s}\end{equation}$$                        
                                                                    
where $K_{\mathrm{prop}}$ is the proportional gain, $K_D$is the derivative gain and $K_I$ is the integral gain. In this procedure we choose the PID gain parameters such that, given a desired location for one of the closed-loop poles $s_1$, the equation

$$\begin{equation}\left.D(s)G(s)H(s)\right|_{s=s_1}=-1\end{equation}$$                                                                                                       
is satisfied; that is we are designing a compensator that places a root 
of the closed-loop characteristic equation at $s=s_1$.

The design proceeds as follows. First we express the desired closed loop 
pole position

$$\begin{equation}s_1=|s_1|e^{j\psi}\end{equation}$$                                                                                                                                                              
and

$$\begin{equation}G(s_1)H(s_1)=\left|G(s_1)H(s_1)\right|e^{j\psi}\end{equation}$$                                                                               
Then the design equations (derived in Appendix B of Phillips and Harbor, 1988) are

$$\begin{equation}K_{\mathrm{prop}}=-\frac{\sin(\beta - \psi)}{\left|G(s_1)H(s_1)\right|\sin\beta}-\frac{2K_I\cos\beta}{|s_1|}\end{equation}$$                                                                 

$$\begin{equation}K_{\mathrm{prop}}=-\frac{\sin\psi}{|s_1|\left|G(s_1)H(s_1)\right|\sin\beta}-\frac{K_I}{|s_1|^2}\end{equation}$$                                                                         

Since there are three unknowns and only two relationships that must be satisfied, one of the gains may be chosen to satisfy a different design specification, such as choosing $K_I$ to achieve a certain steady-state response. These equations can also be used for PI and P+D controllers by setting the appropriate gain 
to zero. We now illustrate the design procedure with an example.

## Example

*Definitions (change these to change design)*

The plant transfer function is

$$G(s)=\frac{1}{(s+1)(5s+1)}$$



{:.input_area}
```matlab
G = tf(1,conv([1 1],[5 1]));  
```


The feedback transfer function is  $H(s)=1$:



{:.input_area}
```matlab
H=tf(1,1); 
```


So $G(s)H(s)$ is:



{:.input_area}
```matlab
GH=G*H 
```


{:.output_stream}
```

GH =
 
         1
  ---------------
  5 s^2 + 6 s + 1
 
Continuous-time transfer function.


```

The root locus of the uncompensated system is:



{:.input_area}
```matlab
clf, sgrid(1/sqrt(2),0.25:0.25:2), hold on, rlocus(GH),hold off 
```



![png](../../images/04/3/analpid_8_0.png)


From the root locus diagram, it is clear that for ideal damping the natural 
frequency of the closed-loop poles would be about 0.9 rad/s with a settling 
time of:

$T_s=\frac{4.6}{\zeta\omega_n}=\frac{4.6}{5/8}=7.36$ s

Suppose we wish to half the settling time then we need to double the natural 
frequency to  $\omega_n = 2$rad/s. 

That is:



{:.input_area}
```matlab
zeta = 1/sqrt(2); wn=2;  
s1 = -zeta*wn+j*wn*sqrt(1-zeta^2)  
```


{:.output_stream}
```

s1 =

  -1.4142 + 1.4142i


```

The steady state error of the uncompensated type 0 system is:

$$\frac{1}{1+\left.G(s)H(s)\right|_{s=0}}=\frac{1}{1+\left.\frac{1}{(5s+1)(s+1)}\right|_{s=0}}=\frac{1}{2}$$   

For the compensated system, which is type 1:

$$K_v=s\left.D(s)G(s)H(s)\right|_{s=0}=\left.\frac{s\left(K_D\,s^s+K_{\mathrm{prod}}\,s+K_I\right)}{s}\right|_{s=0}=K_I$$                     

So if we want a steady-state _velocity _error of 20% we need 



{:.input_area}
```matlab
Ki=20; 
```


## Calculations

Having set up your problem, you shouldn?t need to change these commands

Polar form of $s_1$



{:.input_area}
```matlab
m_s1=abs(s1),  p_s1 = angle(s1)*180/pi % degrees  
```


{:.output_stream}
```

m_s1 =

     2


p_s1 =

   135


```

Transfer function evaluated at $s_1$is $G(s_1)H(s_1)$in polar form:



{:.input_area}
```matlab
[numGH,denGH] = tfdata(GH,'v');
GHs1=polyval(numGH,s1)/polyval(denGH,s1)   
```


{:.output_stream}
```

GHs1 =

  -0.0397 + 0.0610i


```

Magnitude:



{:.input_area}
```matlab
mGHs1=abs(GHs1) 
```


{:.output_stream}
```

mGHs1 =

    0.0728


```

Phase<sup>2</sup>:



{:.input_area}
```matlab
pGHs1=-angle(GHs1)*180/pi - 90 % degrees
```


{:.output_stream}
```

pGHs1 =

 -213.0264


```

Hence:



{:.input_area}
```matlab
beta = p_s1*pi/180; psi = pGHs1*pi/180;  % radians
```


From (5) and (6)



{:.input_area}
```matlab
Kprop = (-sin(beta+psi))/(mGHs1*sin(beta)) - (2*Ki*cos(beta)/m_s1)  
```


{:.output_stream}
```

Kprop =

   33.1421


```



{:.input_area}
```matlab
Kd = (sin(psi)/(m_s1*mGHs1*sin(beta))) + Ki/(m_s1^2)  
```


{:.output_stream}
```

Kd =

   10.2929


```

Compensator is therefore given by



{:.input_area}
```matlab
D = tf([Kd, Kprop, Ki],[1, 0]) 
```


{:.output_stream}
```

D =
 
  10.29 s^2 + 33.14 s + 20
  ------------------------
             s
 
Continuous-time transfer function.


```

## Evaluation of Design

Open loop transfer function:



{:.input_area}
```matlab
Go=D*GH  
```


{:.output_stream}
```

Go =
 
  10.29 s^2 + 33.14 s + 20
  ------------------------
     5 s^3 + 6 s^2 + s
 
Continuous-time transfer function.


```

### Root locus:

rlocus(Go) 

### Closed-loop transfer function:



{:.input_area}
```matlab
DG = D*G  
Gc = feedback(DG,H)  
```


{:.output_stream}
```

DG =
 
  10.29 s^2 + 33.14 s + 20
  ------------------------
     5 s^3 + 6 s^2 + s
 
Continuous-time transfer function.


Gc =
 
      10.29 s^2 + 33.14 s + 20
  --------------------------------
  5 s^3 + 16.29 s^2 + 34.14 s + 20
 
Continuous-time transfer function.


```

### Step response:



{:.input_area}
```matlab
step(Gc) 
```



![png](../../images/04/3/analpid_35_0.png)


## Footnotes

[1] The proofs of the formulae given are derived in Appendix B of this text.

[2] You must be careful with angles when using packages like MATLAB, and indeed pocket calculators. It is nearly always beneficial to have a sketch so that you can correct the results. In this case a correction of $-90^\circ$ 
was needed.

## Resources

An executable version of this document is available to download as the MATLAB Live Script file [analrloc.mlx](analrloc.mlx).
