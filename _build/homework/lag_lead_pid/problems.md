---
redirect_from:
  - "/homework/lag-lead-pid/problems"
interact_link: content/homework/lag_lead_pid/problems.ipynb
title: 'Homework 4 - Lag-Lead and PID Compensation'
prev_page:
  url: /homework/lag_compensation/problems
  title: 'Homework 3 - Lag Compensation'
next_page:
  url: /handouts/csd/index
  title: 'Control System Design Methods'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

#### Swansea University
#### College of Engineering

## EGLM03 Modern Control Systems

# Homework 4: Lag-Lead and PID Compensation

## Problems

1. Add a lag compensator to the lead compensator design for Question 3 of the "[Dominant Poles
and lead Compensation](../lead_compensation/problems)" problem sheet in order to give a position error constant $K_P = 20$.

2. A process control system has open-loop transfer function 

    $$G_o(s)=\frac{9}{(s+3)^2}.$$ 
    
    A PID compensator $$D(s) = K_p + T_D s + 1/(T_I s)$$ 
    is placed in cascade with the plant and unity feedback is applied.   
    Write down the new closed-loop transfer function and tune the values 
    of proportional gain $K_p$, differential time $T_D$ and integral rate 
    $1/T_I$ required to give a steady-state open-loop gain of 15, zero 
    step-error, rise-time $t_r \le 200$ ms and peak overshoot $\%OS \le 
    10\%$.

3. Design a PID compensator for the control system with open-loop transfer function
     $$\frac{5}{(s+1)(s+5)}$$
such that the dominant closed-loop poles satisfy $\zeta = 0.5$, $\omega_n = 10$ rad/s and the velocity error constant $K_v = 25$.

4. A cancellation compensator is to be designed to achieve dominant closed-loop poles at $s = - 1.5 \pm j2.6$ for the system with open-loop transfer function $$\frac{K}{s(s+1)}.$$
Determine the compensation required and the loop gain $K$ of the compensated system. Use the root-locus technique to examine the worst case effect of a 5\% cancellation mismatch due to component tolerances.

5. A control system has open-loop poles at $s = 0$, $-1$ and $-5$. Determine the value of the velocity error constant $K_v$ for this system. Use the zero of a lag compensator to cancel the pole at $s = -1$
and position the pole in order to raise the value of $K_v$ by $10$. Sketch the root-loci for both the compensated and uncompensated systems and comment on the relative stability of each.

6. Using the plant equation $$G(s)=\frac{K}{s-1},\;K>0,$$ and a cancellation compensator $D(s)=\frac{s-1}{s+1}
examine the effect on stability of a small error in the compensator zero position.
