---
redirect_from:
  - "/08/2/sfcontrol"
interact_link: content/08/2/sfcontrol.ipynb
title: 'State-Feedback Control'
prev_page:
  url: /08/1/obsv_ctrl
  title: 'Controllability and Observability'
next_page:
  url: /08/3/observers
  title: 'State Observers'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

# State-Feedback Control

One of the advantages of state space models is that it is possible to apply state feedback to place the closed loop poles into any desired positions.

## State Space Design Methodology

1.  Design control law to place closed loop poles where desired

2.  If full state not available for feedback, then design an *Observer* to compute the states from the system output

3.  Combine *Observer* and *Controller* -- this takes the place of the *Classical Compensator*

4.  Introduce the *Reference Input* -- affects the closed loop zeros but not the poles making it possible to improve the transient response and tracking accuracy

## State Feedback Compensator

![State Feedback Compensator](pictures/statefb.png)

## This Section

-   Finding the control law

-   State feedback for controller canonical form

-   Transfer function model

-   Ackermann's formula

-   Pole-selection for good design

### Additional Materials

Not examined

-   Effect of state feedback on closed-loop zeros

-   Effect of plant zeros on the feedback gains

## Finding the Control Law

We shall only consider SISO systems here.

Let the input to the plant, $u$ be derived from the reference input $r$, and the states, $\mathbf{x}$, as follows:

$$u=r-\mathbf{Kx}=r-(k_1x_1+k_2x_2+\cdots k_nx_n)$$ 

Thus:

$$\begin{eqnarray*}
	\dot{\mathbf{x}} & = & \mathbf{Ax}+\mathbf{B}u \\
	                 & = & \mathbf{Ax}+\mathbf{B}(r - \mathbf{Kx}) \\
	                 & = & (\mathbf{A}-\mathbf{BK})\mathbf{x}+\mathbf{B}r \\	\end{eqnarray*}$$

The state matrix for the closed loop system with input, $r$, is: $\mathbf{A}-\mathbf{BK}$.

Taking Laplace Transforms (ignoring initial conditions) gives:

$$s\mathbf{X}(s) = (\mathbf{A}-\mathbf{BK})\mathbf{X}(s) + \mathbf{B}R(s)$$

Therefore

$$(s\mathbf{I}-\mathbf{A}+\mathbf{BK})\mathbf{X}(s) = \mathbf{B}R(s).$$

The closed loop poles are the roots of $s$ in the Characteristic
Equation (CE): 

$$\begin{equation}
	\det\left[s\mathbf{I}-\mathbf{A}+\mathbf{BK}\right]=0\end{equation}$$

Suppose the desired closed loop poles are to be at $p_1$, $p_2$, $\cdots$, $p_n$, then the desired CE is: 

$$\begin{equation}
	\alpha_c(s) = (s-p_1)(s-p_2)\cdots(s-p_n)=0\end{equation}$$

Equation (2) is multiplied out to a polynomial in $s$.

This leads to a set of linear equations in the $k$'s which can always be solved to give the required feedback control law, for whatever closed loop pole locations are given.

Finally, we need to find the $k$ coefficients in $\mathbf{K}$ such that the polynomials in equations (1) and (2) above have matching coefficients in each power of $s$.

This leads to a set of linear equations in the $k$'s which can always be solved to give the required feedback control law, for whatever closed loop pole locations are given.

### Example 1

Will be done in class.

**Problem**: Given, 

$${\bf{\dot x}} = \left[ {\begin{array}{*{20}c}
   { - 4} & 0  \\
   0 & { - 11}  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   1  \\
   { - 1}  \\
\end{array}} \right]u$$ 

find the feedback control law which places the closed-loop poles at: $-10\pm j10$.

**SOLUTION**: 

$$\begin{eqnarray*}
    0 & = & \det \left[ {s{\bf{I}} - {\bf{A}} + {\bf{BK}}} \right] = \det \left\{ {\left. {\left[ {\begin{array}{*{20}c}
       {s + 4} & 0  \\
       0 & {s + 11}  \\
    \end{array}} \right] + \left[ {\begin{array}{*{20}c}
       1  \\
       { - 1}  \\
    \end{array}} \right]\left[ {\begin{array}{*{20}c}
       {k_1 } & {k_2 }  \\
    \end{array}} \right]} \right\}} \right. \\
    0 & = & \det \left[ {\begin{array}{*{20}c}
       {s + 4 + k_1 } & {k_2 }  \\
       { - k_1 } & {s + 11 - k_2 }  \\
    \end{array}} \right] \\
    0 & = & (s + 4 + k_1 )(s + 11 - k_2 ) - (k_2 )( - k_1 ) \\
    0 & = & (s+4+k_1)(s+11-k_2)+k_1k_2\end{eqnarray*}$$ 
 
$$\begin{equation}
    s^2+(15+k_1-k_2)s+(44+11k_1-4k_2)=0\end{equation}$$

Now the desired CE is: $$\alpha_c(s)=(s+10-j10)(s+10+j10) = 0$$

$$\begin{equation}
    s^2+20s+200=0\end{equation}$$

Therefore matching coefficients in Eqs. (3) and (4):

$$\begin{array}{c}
 s^2 :1 = 1 \to {\rm{OK}} \\
 s^1 :15 + k_1  - k_2  = 20 \to k_1  - k_2  = 5 \\
 s^0 :44 + 11k_1  - 4k_2  = 200 \to 11k_1  - 4k_2  = 156 \\
 \end{array}$$

Solving for the $k$'s: 

$$\left[ {\begin{array}{*{20}c}
   1 & { - 1}  \\
   {11} & { - 4}  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   {k_1 }  \\
   {k_2 }  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   5  \\
   {156}  \\
\end{array}} \right]$$ $$\left[ {\begin{array}{*{20}c}
   {k_1 }  \\
   {k_2 }  \\
\end{array}} \right] = \frac{1}{ - 4 + 11}\left[ {\begin{array}{*{20}c}
   { - 4} & 1  \\
   { - 11} & 1  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   5  \\
   {156}  \\
\end{array}} \right] = \frac{1}{7}\left[ {\begin{array}{*{20}c}
   {136}  \\
   {101}  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   {19.429}  \\
   {14.429}  \\
\end{array}} \right]$$

Therefore the required feedback control law is:

$$u = r - \left[ {\begin{array}{*{20}c}
   {19.429} & {14.429}  \\
\end{array}} \right]{\bf{x}}$$

**COMMENT** This matching of coefficients can always be done, though it
is tedious for $n>3$, **EXCEPT** in the case of the *Control Canonical
Form*.

## State Feedback in the Case of the Control Canonical Form

In the control canonical form we have matrices:
$${\bf{A}} = \left[ {\begin{array}{*{20}c}
   { - a_1 } & { - a_2 } &  \cdots  & { - a_n }  \\
   1 & 0 &  \cdots  & 0  \\
   0 &  \ddots  &  \cdots  &  \vdots   \\
   0 & 0 &  \cdots  & 0  \\
\end{array}} \right];\quad {\bf{B}} = \left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
    \vdots   \\
   0  \\
\end{array}} \right]$$ with open loop CE:

$$\det(s\mathbf{I}-\mathbf{A})=s^n+a_1s^{n-1}+\cdots+a_n=0.$$

Feedback results in the closed loop CE:

$$\det(s\mathbf{I}-\mathbf{A}+\mathbf{BK}) = 0$$ 

where:

$${\bf{A}} - {\bf{BK}}  =  {\bf{A}} - \left[ {\begin{array}{*{20}c}
	   1  \\
	   0  \\
	    \vdots   \\
	   0  \\
	\end{array}} \right]\left[ {\begin{array}{*{20}c}
	   {k_1 } & {k_2 } &  \cdots  & {k_n }  \\
	\end{array}} \right]$$

$${\bf{A}} - {\bf{BK}}  =  \left[ {\begin{array}{*{20}c}
	   {( - a_1  - k_1 )} & {( - a_2  - k_2 )} &  \cdots  & {( - a_n  - k_n )}  \\
	   1 & 0 &  \cdots  &  \vdots   \\
	    \vdots  &  \ddots  &  \cdots  &  \vdots   \\
	   0 & 0 &  \cdots  & 0  \\
	\end{array}} \right]$$ 

therefore 

$$\begin{equation}
	\det(s\mathbf{I}-\mathbf{A}+\mathbf{BK}) = s^n + ( - a_1  - k_1 )s^{n-1} + ( - a_2  - k_2 )s^{n-2} + \cdots +  ( - a_n  - k_n ) = 0.\end{equation}$$

Suppose the desired CE is: 

$$\begin{eqnarray}
	\alpha_c(s) & = & (s-p_1)(s-p_2)\cdots(s-p_n)=0 \nonumber \\
	\alpha_c(s) & = & s^n + \alpha_1s^{n-1} + \alpha_2s^{n-2} + \cdots + \alpha_n = 0 \end{eqnarray}$$

Matching coefficients in Eqs. (5) and (6) is now simple: 

$$\begin{eqnarray*}
	s^{n - 1}  & : & a_1  + k_1  = \alpha _1  \to k_1  = \alpha _1  - a_1 \\
	s^{n - 2}  & : & a_2  + k_2  = \alpha _2  \to k_2  = \alpha _2  - a_2 \\
	\mathrm{etc}  \\
	s^{0}  & : & a_n  + k_n  = \alpha _n  \to k_n  = \alpha _n  - a_n				
\end{eqnarray*}$$

### Example 2

Solved in class

**Problem**: Given the system TF: 

$$G(s) = \frac{7}{(s+4)(s+11)}$$ 

find the control law for the control canonical form which places the closed loop poles at $s=−10\pm j10$.

**SOLUTION**: $$G(s) = \frac{7}{(s+4)(s+11)} = \frac{7}{(s^2+15s+44)}$$

The control canonical form has matrices:

$${\bf{A}} = \left[ {\begin{array}{*{20}c}
   { - 15} & { - 44}  \\
   1 & 0  \\
\end{array}} \right];\quad {\bf{B}} = \left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right];\quad {\bf{C}} = \left[ {\begin{array}{*{20}c}
   0 & 7  \\
\end{array}} \right];\quad {\bf{D}} = 0$$

**NB**: $\mathbf{C}$ is obtained from the TF numerator $(0s+7)$. so:

$${\bf{A}} - {\bf{BK}} = \left[ {\begin{array}{*{20}c}
   { - 15 - k_1 } & { - 44 - k_2 }  \\
   1 & 0  \\
\end{array}} \right]$$ 

and the closed loop CE is:

$$\begin{equation}
s^2+(15+k_1)s+(44+k_2)=0 
\end{equation}$$ 

The desired CE is:

$$\alpha_c(s)=(s+10-j10)(s+10+j10) = 0$$ 

$$\begin{equation}
    s^2+20s+200=0
\end{equation}$$

Comparing Eqs. (7) and (8) gives: 

$$15 + k_1  = 20 \to k_1  = 5$$ 

and

$$44 + k_2  = 200 \to k_2  = 156$$ 

giving the control law as:

$$u = r - \left[ {\begin{array}{*{20}c}
   {5} & {156}  \\
\end{array}} \right]{\bf{x}}$$

## A Transfer Function Model of State Feedback

The last example had a system TF with no zeros. In this case it is easy to construct the equivalent classical controller. We had the feedback law: 

$$u=r-5x_1-156x_2$$

so, taking Laplace transforms:

$$U(s) = R(s) - 5X_1(s) - 156X_2(s)$$

Now $y=7x_2$ and $\dot{x}_2=x_1$ therefore $X_2(s)=Y(s)/7$ and $X_1(s)=sX_2(s)=sY(s)/7$. Therefore

$$U(s) =  R(s) - \frac{1}{7}(5s+156)Y(s)$$

### Transfer Function Model of State Feedback

![Transfer Function Model of State Feedback](pictures/tfmodel.png)

**Note**: the DC gain is affected -- this could be compensated for by introducing a gain term in series with input $R$.

## Ackermann's Formula

### State Feedback Design for any Form of State Space Model

-   As stated previously, the derivation of the feedback law is tedious
    for systems of order $n>3$ except in the case of the controller
    canonical form.

-   One approach to the problem is to transform the given model to
    controller canonical form, derive the control law in terms of these
    states and then transform back to the original system.

-   Ackermann derived the following formula by this method.

### The formula

State feedback: $u=r-\mathbf{K}\mathbf{x}$ will place the closed loop poles at the roots of the desired CE:

$$\alpha_c(s) = s^n + \alpha_1s^{n-1} + \cdots + \alpha_n = 0$$ 

where the row vector $\mathbf{K}$ is given by Ackermann's formula:

$$\mathbf{K} = 
\left[ {\begin{array}{*{20}c}
   0 &  \cdots  & 0 & 1  \\
\end{array}} \right]
\mathcal{C}^{-1}\alpha_c(\mathbf A)$$

### Explanation of the terms

$\mathcal{C}$ is the controllability matrix (see [Section 8.1](../1/obsv_ctrl)):

$$\mathcal{C} = [\mathbf{B}\vdots\mathbf{AB}\vdots\cdots\vdots\mathbf{A}^{n-1}\mathbf{B}]$$

and

$$\alpha_c(\mathbf{A})=\mathbf{A}^n + \alpha_1\mathbf{A}^{n-1}+ \cdots + \alpha_n\mathbf{I}$$

### Caveats

-   The system must be *controllable* for $\mathcal{C}^{-1}$ to exist.

-   Ackermann's formula is useful for SISO systems of order $n\le 10$.

-   $\mathcal{C}$ becomes numerically inaccurate for large $n$.

### MATLAB Function

From MATLAB CST, `help acker`: `K = ACKER(A,B,P)` calculates the feedback gain matrix $\mathbf{K}$ such that the single input system

$$\dot{\mathbf{x}}=\mathbf{Ax}+\mathbf{B}u$$ 

with a feedback law of $u = -\mathbf{Kx}$ has closed loop poles at the values specified in vector $\mathbf{P}$, i.e., `P = eig(A-B*K)`.

**Note**: This algorithm uses Ackermann's formula. This method is NOT numerically reliable and starts to break down rapidly for problems of order greater than 10, or for weakly controllable systems. A warning message is printed if the nonzero closed-loop poles are greater than 10% from the desired locations specified in $\mathbf{P}$.

### Example 3

For class

**Problem**: Given: 

$${\bf{A}} = \left[ {\begin{array}{*{20}c}
   1 & 2  \\
   { - 1} & 1  \\
\end{array}} \right]\quad {\rm{and}}\quad {\bf{B}} = \left[ {\begin{array}{*{20}c}
   1  \\
   { - 2}  \\
\end{array}} \right]$$ 

find the feedback vector $\mathbf{K}$ to place the closed loop poles at $s = -1,\ -1$ using Ackermann's formula.

**SOLUTION**: 

$$\alpha_c(s) = (s + 1)(s + 1) = s^2 + 2s + 1$$ 

therefore

$$\alpha_c(s) = \mathbf{A}^2 + 2\mathbf{A}s + \mathbf{I}$$

$$\alpha _c ({\bf{A}}) = \left[ {\begin{array}{*{20}c}
   { - 1} & 4  \\
   { - 2} & { - 1}  \\
\end{array}} \right] + 2\left[ {\begin{array}{*{20}c}
   1 & 2  \\
   { - 1} & 1  \\
\end{array}} \right] + \left[ {\begin{array}{*{20}c}
   1 & 0  \\
   0 & 1  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   2 & 8  \\
   { - 4} & 2  \\
\end{array}} \right]$$

$${\bf{AB}} = \left[ {\begin{array}{*{20}c}
   { - 3}  \\
   { - 3}  \\
\end{array}} \right];\quad \mathcal{C} = \left[ {\bf{B}\vdots {\bf{AB}}} \right] = \left[ {\begin{array}{*{20}c}
   1 & { - 3}  \\
   { - 2} & { - 3}  \\
\end{array}} \right]$$

$$\begin{eqnarray*}
    {\bf{K}} & = & \left[ {\begin{array}{*{20}c}
       0 &  \cdots  & 0 & 1  \\
    \end{array}} \right]\mathcal{C}^{ - 1} \alpha _c ({\bf{A}}) \\
    & = & \left[ {\begin{array}{*{20}c}
       0 & 1  \\
    \end{array}} \right]\left[ {\begin{array}{*{20}c}
       1 & { - 3}  \\
       { - 2} & { - 3}  \\
    \end{array}} \right]^{ - 1} \left[ {\begin{array}{*{20}c}
       2 & 8  \\
       { - 4} & 2  \\
    \end{array}} \right] \\
    & = & \left[ {\begin{array}{*{20}c}
       0 & 1  \\
    \end{array}} \right]\frac{\left[ {\begin{array}{*{20}c}
       { -3 } & { 3 }  \\
       { 2 } & { 1 }  \\
    \end{array}} \right]}{-3-(+6)} \left[ {\begin{array}{*{20}c}
       2 & 8  \\
       { - 4} & 2  \\
    \end{array}} \right] \\
    & = & \left[ {\begin{array}{*{20}c}
       0 & 1  \\
    \end{array}} \right]\frac{1}{-9}\left[ \begin{array}{*{20}c}
       { -18 } & { -18 }  \\
       { 0 } & { 18 }  \\
    \end{array} \right] \\
    & = & \left[ {\begin{array}{*{20}c}
       0 & 1  \\
    \end{array}} \right]\left[ \begin{array}{*{20}c}
       { 2 } & { 2 }  \\
       { 0 } & { -2 }  \\
    \end{array} \right] \\
    & = & \left[ {\begin{array}{*{20}c}
       0 & -2  \\
    \end{array}} \right]\end{eqnarray*}$$

### Solution in MATLAB

Using the formula



{:.input_area}
```matlab
A = [1 2; -1 1]; B = [1; -2];
alpha_c = A * A + 2 * A + eye(2);
K = [0 1] * inv(ctrb(A, B)) * alpha_c
```


{:.output_stream}
```

K =

     0    -2


```

Using the function `acker`



{:.input_area}
```matlab
P = [-1, -1]; % vector of desired pole locations
Ka = acker(A, B, P)
```


{:.output_stream}
```

Ka =

     0    -2


```

## Pole Selection for Good Design

Large control gains (large values in $\mathbf{K}$) are to be avoided since they result in high energy costs and require high power/bandwidth actuators.

**A compromise must be achieved between good system response and control
effort.**

Sensible choices of poles may be obtained from standard tables which optimise the step response in some way.

e.g. The **ITAE** (Integral Time and Absolute Error) **poles** are designed to minimise, 

$$I=\int_0^\infty t|\mathrm{error}| dt$$ 

These have overshoot. If this is really unacceptable (*e.g.* in machine tools) then Bessel polynomials can be used.

  | **Order/Type** |       **ITAE**          |      **Bessel**         |
  |----------------|-------------------------|-------------------------|
  |      1         |        $$s+1$$          |        $$s+1$$          |
  |      2         |  $$s^2+\sqrt{2}s+1$$    |  $$s^2+\sqrt{3}s+1$$    |
  |      3         | $$s^3+1.75s^2+2.15s+1$$ | $$s^3+2.43s^2+2.47s+1$$ |
  |     etc        |         etc             |         etc             |

The above are normalised to give $\omega_0=1$ rad/s. To obtain polynomials for $\omega_0\ne 1$, replace $s$ in the above with $s/\omega_0$.

E.g. if $\omega_0=5$, the $2^\mathrm{nd}$ order ITAE polynomial is: $s^2+5\sqrt{2}s+25$.

### Comments

-   In general the Bessel polynomials have too much damping for normal applications --- it is preferable to use ITAE (or Butterworth) poles if some overshoot is acceptable.

-   If zeros are present they tend to "sharpen up" the transient response (faster rise times but consequently with more overshoot). In such cases it may be desirable to place a closed loop pole on top of a troublesome zero and work with the reduced order system as above.

-   The poles closest to the origin matter most; other poles give rise to shorter-term transients only and may need only to be shifted to a better damped location, if necessary, at a similar frequency (distance from the origin).

A most effective technique is to use optimal control to achieve a compromise between control effort, $u$, and error, $e$. i.e. Find the feedback vector $\mathbf{K}$ such as to minimise,

$$J=\int_0^{\infty}\left(e^2+\frac{u^2}{k}\right) dt$$ 

where the choice of the parameter $k$ determines the required compromise between,

-   High Accuracy for High Control Effort (use a large value for $k$)

-   Lower Accuracy for Reduced Control Effort (use a smaller value for $k$)

## End of Pre-Class Presentation

**Non Examined Content**

The remainder of this section will not be examined. It is nonetheless important for those of you wishing to implement state-feedbck control.

## Effect of State Feedback on the Closed Loop Zeros

Since, 

$$u = r - \mathbf{Kx}$$ 

then the closed-loop system is:

$$\begin{eqnarray*}
	\dot{\mathbf{x}} & = & \mathbf{A}\mathbf{x}+\mathbf{B}u;\ y = \mathbf{C}\mathbf{x}+\mathbf{D}u \\
	\dot{\mathbf{x}} & = & \mathbf{A}\mathbf{x}+\mathbf{B}(r - \mathbf{K}\mathbf{x});\ y = \mathbf{C}\mathbf{x}+\mathbf{D}(r - \mathbf{K}\mathbf{x}) \\
	\dot{\mathbf{x}} & = & (\mathbf{A}-\mathbf{B}\mathbf{K})\mathbf{x}+\mathbf{B}r;\ y = (\mathbf{C}-\mathbf{D}\mathbf{K})\mathbf{x}+\mathbf{D}r \\\end{eqnarray*}$$

By analogy with previous work (see [*Some Important Properties*](https://cpjobling.github.io/eglm03-textbook/07/2/tf4ss#some-important-properties), in [Section 7.2](https://cpjobling.github.io/eglm03-textbook/07/2/tf4ss)), the TF from reference input $r$ to output $y$ is:

$$\frac{Y(s)}{R(s)} = \frac{\det \left[ {\begin{array}{*{20}c}
   {(s{\bf{I}} - {\bf{A}} + {\bf{BK}})} & { - {\bf{B}}}  \\
   {({\bf{C}} - {\bf{DK}})} & {\bf{D}}  \\
\end{array}} \right]}{\det (s{\bf{I}} - {\bf{A}} + {\bf{BK}})}$$

The closed loop TF zeros are determined by the numerator determinant.

Adding $\mathbf{K}$ times the $2^\mathrm{nd}$ column to the first cancels terms whilst leaving the determinant unchanged.

The new form for the TF is:

$$\frac{Y(s)}{R(s)} = \frac{\det \left[ {\begin{array}{*{20}c}
   {(s{\bf{I}} - {\bf{A}})} & { - {\bf{B}}}  \\
   {\bf{C}} & {\bf{D}}  \\
\end{array}} \right]}{\det (s{\bf{I}} - {\bf{A}} + {\bf{BK}})}$$

Notice now that numerator is identical to that of the open loop TF. This implies that the state feedback control has left the open loop zeros unchanged. The different denominator is due to the feedback action which alters the pole positions as required.

## Effect of Zero Locations on the Feedback Gains

When a zero is close to a pole in the TF there is a marked increase in the feedback gains. This effect is best illustrated with an example.

Given a system with a TF,

$$\frac{Y(s)}{U(s)}=\frac{s-z}{s-p}=1+\frac{p-z}{s-p}$$ 

find the control law to move the pole to $p_c$.

Using the observer canonical form, 

$$\dot{x}=px+(p - z)u,\ y = x + u.$$

Design the feedback to move the closed-loop pole to $p_c$. Now,

$$\mathbf{A}=p;\ \mathbf{B}=p-z;\ \mathbf{K}=k_1.$$ 

Desired CE polynomial: $\alpha_c(s)=s-p_c$. Actual CE polynomial: $\det(s\mathbf{I}-\mathbf{A}-\mathbf{BK}) = s - p + (p - z)k_1.$

Comparing the constant: 

$$\begin{eqnarray*}
	-p_c & = & -p + (p - z)k_1 \\
	k_1 & = & \frac{p-p_c}{p-z}\end{eqnarray*}$$

Notice that the feedback gain $k_{1}$ is
large if:

-   the zero is close to the pole: $z\approx p$

-   the closed loop pole $p_c$ is far from $p$

### Effect of Zero Locations on the Feedback Gains

Large feedback control gains are required if:

1.  There exist almost cancelling pole-zero pairs in the open loop TF, making the system almost uncontrollable.

    ![Effect of Zero Locations on the Feedback Gains](pictures/zeroloc.png)
    
    (Notice that in this condition the input $u$ is almost disconnected from the integrator for the state.)

2.  One tries to move the poles a long way, ($|p-p_c|$ large).

    This imposes a practical limit on how arbitrarily the poles can be placed. You ca
    nnot make a slow system fast without using large gains requiring powerful, expensive actuators to force the plant response. Indeed, excessively large forces may destroy the plant.

## Summary

-   Finding the control law

-   State feedback for controller canonical form

-   Transfer function model

-   Ackermann's formula

-   Pole-selection for good design

-   Effect of state feedback on closed-loop zeros

-   Effect of plant zeros on the feedback gains
