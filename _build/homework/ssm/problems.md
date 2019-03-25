---
redirect_from:
  - "/homework/ssm/problems"
interact_link: content/homework/ssm/problems.ipynb
title: 'Homework 8 - State Space Modelling'
prev_page:
  url: /homework/ss2tf/problems
  title: 'Homework 7 - Modelling Systems in Statespace'
next_page:
  url: /handouts/csd/index
  title: 'Control System Design Methods'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

#### Swansea University
#### College of Engineering

## EGLM03 Modern Control Systems

# Homework 8: State Space Modelling

## Problems

1. For each of the systems which have the differential equatons shown below. determine the state space model in companion, controller canonical and observer canonical forms.
    
    a. $$2\frac{dy}{dt}+ 8y = 10u$$
    
    b. $$2\frac{d^2 y}{dt^2} + 6\frac{dy}{dt}+ 8y = 10\frac{d^2 u}{dt^2}+40\frac{du}{dt} + 30u$$
    
    c. $$\frac{d^2 y}{dt^2} + 5\frac{dy}{dt}+ 4y = 10\frac{du}{dt} + 200u$$
    
    d. $$\frac{d^2 y}{dt^2} + \frac{dy}{dt}+ 4y = 10u$$
    
    e; $$\frac{d^3 y}{dt^3} + 7\frac{d^2 y}{dt^2} + 14\frac{dy}{dt}+ 8y = 10\frac{du}{dt} + 30u$$
    
  

  
2. Calculate the eigenvalues and eigenvectors of the state matrices of each of the systems derived in the answers to Question 1 and hence or otherwise construct the normal canonical forms of each system.

3.	Find the similarity transform that converts the solution for Question 1(e) from observer canonical form to the normal form derived in Question 2.

4.	Find the similarity transform that converts the solution for Question 1(e) from controller canonical form to the normal form derived in Question 2.

5.	For each of the systems with transfer functions shown below, construct the state space model in block diagonal (Jordan) form.
    
    a. $$\frac{d^3y}{dt^3} + 9\frac{d^2y}{dt^2} + 24\frac{dy}{dt} + 16y = 5\frac{du}{dt}+ 10u$$
        
    b. $$\frac{d^3 y}{dt^3} + 10\frac{d^2 y}{dt^2} + 90\frac{dy}{dt}+ 81y = 10\frac{du}{dt} + 20u$$
        

6. Determine the system transform matrices that will convert a system in observer canonical form to one in controller canonical form. Demonstrate your result by applying the transform to the solutions to Question 1.

7. For the controller canonical forms of the system shown in Question 1(c) calculate the system response for $u=1$ $t\ge 0$, with initial conditions  $X_1(0)=x_2(0) = 1$. 

    Use

    a.	the state-transition matrix

    b.	transformation to normal form and 
    
    c.	inverse Laplace transform. 

8.	For each of the systems of Question 1, determine the controllability and observability using the controllability canonical form or observer canonical form as appropriate.

9.	Use Ackermann’s equations to confirm the results of Question 8.
