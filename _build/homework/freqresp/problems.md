---
redirect_from:
  - "/homework/freqresp/problems"
interact_link: content/homework/freqresp/problems.ipynb
title: 'Homework 5 - Frequency Response Cascade Compensator Design'
prev_page:
  url: /homework/lag_lead_pid/problems
  title: 'Homework 4 - Lag-Lead and PID Compensation'
next_page:
  url: /handouts/csd/index
  title: 'Control System Design Methods'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

#### Swansea University
#### College of Engineering

## EGLM03 Modern Control Systems

# Homework 5: Frequency Response Cascade Compensator Design

## Problems

1. The uncompensated loop-transfer function of a system is $$G(s)H(s)=\frac{2}{s(s+2)}.$$ Assuming unity-gain feedback, design a cascade lead compensator to achieve a velocity constant
$K_v$ of 20 and a phase margin of 45°.

2. Design a lag compensator for the system of Question 1 to achieve the same design constraints. Compare the relative merits of the two approaches.

3. The open-loop transfer function of a position control system is $$Go(s)=\frac{25}{s\left(1+\frac{1}{4}s\right)\left(1+\frac{1}{16}s\right)}.$$ The system's gain and phase margin are to exceed 1.5 and 15° respectively. Determine whether these specification are satisfied and if not design a lead compensator to meet the specifications
and also to maintain the open-loop gain at 25.

4. Using frequency response methods, design a compensator to achieve a step-response with a rise
time $t_r \le 0.4$ s, a peak overshoot $\%OS \le 20\%$ and a step error constant $K_p = 20$ for the system
with plant transfer function $$\frac{3}{(s+1)(s+3)}.$$ Estimate the closed-loop bandwidth of the compensated system and the resonant peak $M_{\mathrm{max}}$·

5. A type 2 servomechanism has transfer function $$G(s)H(s) = \frac{0.25}{s^2(1+0.25s)},\;H(s)=1.$$ Show the effect on stability of adding the cascade lead network: $$D(s)=\frac{1}{16}\left(\frac{1+4s}{1+0.25s}\right)$$ and a pre-amplifier with gain $K_p = 16$.
6. Repeat the design of Question 4 using the w-transform method to determine the parameters of a suitable digital compensator. Assume that the sampling frequency $\omega_s = 10\omega_{\mathrm{Bw}}$. Write down the
difference equation of the resulting digital compensator.
