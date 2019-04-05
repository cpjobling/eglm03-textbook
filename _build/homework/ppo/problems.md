---
redirect_from:
  - "/homework/ppo/problems"
interact_link: content/homework/ppo/problems.ipynb
title: 'Homework 9 - Pole Placement and Observers'
prev_page:
  url: /homework/ssm/problems
  title: 'Homework 8 - State Space Modelling'
next_page:
  url: /handouts/csd/index
  title: 'Control System Design Methods'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

#### Swansea University
#### College of Engineering

## EGLM03 Modern Control Systems

# Homework 9: Pole Placement and Observers

## Problems

### Pole Placement

1. A system with input signal $u$ and output signal $y$ is described by the differential equation:
  
   $$\frac{d^3y}{dt^3} + 20 \frac{d^2y}{dt^2} + 109 \frac{dy}{dt} + 90y = \frac{du}{dt} + 8u.$$

   Design a controller for this system so that the closed-loop system poles have the Butterworth configuration:
   
   $$s=-10,\;s=-5+j8.667\;s=-5-j8.667.$$
   
   [Ans: $\mathbf{K} = [0\; 91\; 910]\;$]


2. A system with input signal $u$ and output signal $y$ has the transfer function:

   $$\frac{s+1}{s(s^2 + 2s + 2)}.$$

   Design a controller for this system so that the closed-loop system transfer function is reduced to second
   order, with the two poles at:
    
   $$s -2 + j2\; -2 -j2.$$
 
   [Ans: $\mathbf{K} = [3\; 10\; 8]\;$]

### Observers

3. A system with input signal $u$ and output signal $y$ is described by the differential equation:

   $$\frac{d^3y}{dt^3} + 20 \frac{d^2y}{dt^2} + 109 \frac{dy}{dt} + 90y = \frac{du}{dt} + 8u.$$

   If the output signal $y$ is the only measurable signal in the system, design an observer with three poles at      $s = -20$ which will generate estimates of the state variables of the system. (Use observer canonical form).

   [Ans: $\mathbf{L} = [40\;1091\;7910]^T\;$]


4. A system with input signal $u$ and output signal $y$ has the transfer function:

   $$\frac{1}{s(s+1)}.$$

   If the output signal $y$ is the only measurable signal in the system, design an observer with two poles at $s=-10$ which will generate estimates of the state variables of the system. (Use observer canonical form). Show that the differences between the actual and the estimated states decay to zero with time.
   
   [Ans: $\mathbf{L} = [19\;100]^T\;$]
