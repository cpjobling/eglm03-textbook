---
redirect_from:
  - "/homework/ss2tf/problems"
interact_link: content/homework/ss2tf/problems.ipynb
title: 'Homework 7 - Modelling Systems in Statespace'
prev_page:
  url: /homework/digirev/problems
  title: 'Homework 6 - Digital Systems Revision'
next_page:
  url: /homework/ssm/problems
  title: 'Homework 8 - State Space Modelling'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

#### Swansea University
#### College of Engineering

## EGLM03 Modern Control Systems

# Homework 7: Modelling Systems in Statespace

## Problems

1. Prove that the impulse response of a state-space model is
    
    $$\begin{eqnarray*}
    \mathbf{g}(t)&=&\mathcal{L}^{-1}\left\{\mathbf{C}\Phi(s)\mathbf{B}+\mathbf{D}\right\}\\
    &=&\mathcal{L}^{-1}\left\{\mathbf{G}(s)\right\}\end{eqnarray*}$$

2.  Consider the circuit example introduced in
    [Section 7.1](../../07/2/tf4ss) and converted into transfer function matrix form in [Section 7.2](../../07/2/intro2ss). 
    
    If $L=100$ mH, $C=1000$ $\mu$F and $R=20$ $\Omega$, and
    the output is taken to be the voltage $v_{21}(t)$ across the
    resistor, determine the following:

    1.  The state transition matrix.

    2.  The zero input response given an initial voltage across the
        capacitor $v_{32}(0)=10$ V and assuming the current in the
        inductor is initially $0$ A.

    3.  The zero state output and state variable responses given an
        input current of $i=0.5e^{-t}$.

    4.  The total output response,

3.  Use state-space methods to find the total solution to the
    differential equation
    
    $$\frac{d^2(t)}{dt^2}+20\frac{dy(t)}{dt}+10y(t) = 16u(t)$$ 
    
    given the
    initial conditions $\frac{dy(0)}{dt}=1$ and $y(0)=0$ and
    $u(t)=\epsilon(t)$.

4.  Show that the state space models 

    $$\begin{eqnarray*}
    \dot{\mathbf{x}}&=&\left[\begin{array}{cc}
      0 & 1 \\
      -100 & -200
    \end{array}\right]+\left[\begin{array}{c}
      0 \\
      200000
    \end{array}\right]u\\ y&=&[1, 0]\mathbf{x}\end{eqnarray*}$$ 
    
    and
    
    $$\begin{eqnarray*}
    \dot{\mathbf{x}}&=&\left[\begin{array}{cc}
      -0.50126 & 0 \\
      0 & -199.5
    \end{array}\right]+\left[\begin{array}{c}
      1124.2 \\
      2.0051\times 10^{5}
    \end{array}\right]u\\ y&=&[0.89398   -0.0050125]\mathbf{x}\end{eqnarray*}$$
    
    have the same input-output relationship (transfer function).
    
    Construct the state transition matrix $\mathbf{\phi}(t)$ and the zero state and
    zero input output response equations for both systems and observe
    how the modes of the system are represented in the system output
    equations. 
    
    Compare the result with that of
    question 1 which has the same transfer function! 
    
    What does this tell you about
    the transfer function as a representation of a system?
