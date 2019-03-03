---
redirect_from:
  - "/homework/digirev/problems"
interact_link: content/homework/digirev/problems.ipynb
title: 'Homework 6 - Digital Systems Revision'
prev_page:
  url: /homework/freqresp/problems
  title: 'Homework 5 - Frequency Response Cascade Compensator Design'
next_page:
  url: /homework/ss2tf/problems
  title: 'Homework 7 - Modelling Systems in Statespace'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

#### Swansea University
#### College of Engineering

## EGLM03 Modern Control Systems

# Homework 6: Digital Systems Revision

## Problems

1. Given that $z = e^{sT} = e^{\sigma T} \angle \pm \omega T$, where $T$ is the sampling period of a digital system, show that

    a. points with frequencies of $\pm\omega_s/2$ (where $\omega_s$ is the sampling rate $2\pi/T$) in the s-domain map
onto the negative real axis in the z-domain.

    b. the imaginary axis in the s-domain maps onto the unit circle $$\left|z\right| = 1$$ in the z-domain
    
    c. lines of constant $\sigma$ in the s-domain map onto concentric circles centred at $z = 0$ in the
z-domain

    d. lines of constant frequency in the s-domain map onto radial lines centred at $z = 0$ in the
z-domain.

    Derive equations for curves of constant second-order damping ratio $\zeta$ and natural frequency $\omega_n$
in the z-domain. Comment on the effect of high sampling rates on the poles of a discrete system.

2. Determine the z-transform of the function $f(t) = e^{-at}$, where $a$ is real $> 0$.

3. Given that $$G(s) = \frac{s+4}{(s+1)(s+3)},$$ determine $G(z)$. [*Hint*: determine $g(t)$ first.]

4. A discrete transfer function $G(z)$ is given by $$G(z) = \frac{0.387z^2}{(z-1)(z^2 - 2.37z + 025)}.$$
Determine the value of $g(nT)$ as $nT \rightarrow \infty$.

5. Use long division to find the inverse z-transform of $$F(z)=\frac{\left(1-e^{-aT}\right)z}{z^2 - \left(1-e^{-aT}\right)z + e^{-aT}}$$.

6. The system type of a unity gain feedback digital control system $$\frac{C(z)}{R(z)} = \frac{G_o(z)}{1 + G_o(z)}$$ is given by the number of poles at $z = 1$. Thus a Type 0 system has no poles at $z = 1$, a Type
1 system has one, and so on. Use the discrete version of the final value theorem
$$\lim_{n\rightarrow \infty} x(nT) = \lim_{z \rightarrow 1}\left(1-z^{-1}\right)X(z)$$ to derive formulae for the steady-state error of a digital control system to step, ramp and parabolic inputs.

7. (not examinable) Apply Jury's test (MATLAB function `jury`) to determine if the following characteristic
equations have any roots outside the unit circle:

    a. $z^2 + 0.25 = 0$

    b. $z^3 - 1.1z^2 + 0.01z + 0.405 = 0$
    
    c. $z^3 - 3.6z^2 + 4z - 1.6 = 0$.
