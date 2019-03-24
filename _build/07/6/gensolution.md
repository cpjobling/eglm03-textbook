---
redirect_from:
  - "/07/6/gensolution"
interact_link: content/07/6/gensolution.ipynb
title: 'The General Solution of LTI Systems'
prev_page:
  url: /07/5/systransf
  title: 'Transformation of States and System Diagonalization'
next_page:
  url: /01/mattf
  title: 'Appendix A Defining Transfer Functions in MATLAB'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

# The General Solution of LTI Systems

In this section we conclude our introduction to state space systems by developing a method that can be used to solve any linear time invariant (LTI) system using the state space model. This will put on a formal mathematical footing the approach described in [Section 7.3](../3/tr4ss). 

To do this we need to derive the Taylor series for the state matrix and then use the results from the previous two lectures to formally derive the state transmission matrix $\mathbf{\phi}(t)$ from the resolvant matrix $\mathbf{\Phi}(\lambda) = |\lambda\mathbf{I}-\mathbf{A}|$. This will lead is to a general solution which we will illustrate with examples and compare with the solution developed in the [last section](../5/systrans) and the solution obtained by inverting the system transfer function. As before, we will refer to MATLAB where relevant.

Once we have completed this material, we will be in a position to move on to look at state-space methods for control system design.

## The Matrix Exponential Function

In mathematics, the [Taylor series](https://en.wikipedia.org/wiki/Taylor_series) is a representation of a function as an infinite sum of terms calculated from the values of its derivatives at a single point. It is named after the English mathematician [Brook Taylor](https://en.wikipedia.org/wiki/Brook_Taylor). It is common practice to use a finite number of terms of the series to approximate a function. The Taylor series may be regarded as the limit of the Taylor polynomials.

We use Taylor series to approximate general functions, and here we adapt the Taylor series to discover the form of a function of a matrix.

### Taylor series

If a function $f(t)$ has Taylor series:

$$f(t)=f_0 + f_1t + f_2t^2 + \cdots + f_nt^n + \cdots$$ 

Then the corresponding matrix function is defined as:

$$f(\mathbf{A}t)=f_0\mathbf{I} + f_1\mathbf{A}t + f_2\mathbf{A}^2t^2 + \cdots + f_n\mathbf{A}^nt^n + \cdots$$

### Using the Similarity Transformation

Given the transformation $\mathbf{T}^{-1}\mathbf{AT}=\mathbf{\Lambda}$:

$$\begin{equation*}
	\mathbf{A}t = (\mathbf{T\Lambda T}^{-1}) t
\end{equation*}$$

$$\begin{eqnarray*}
\mathbf{A}^nt^n & = & (\mathbf{T\Lambda T}^{-1})(\mathbf{T\Lambda T}^{-1})\ldots(\mathbf{T\Lambda T}^{-1})t^n \\
	                & = & \mathbf{T\Lambda T}^{-1}\mathbf{T\Lambda T}^{-1}\ldots\mathbf{T\Lambda T}^{-1}t^n \end{eqnarray*}$$

$$\begin{eqnarray*}	\mathbf{A}^nt^n & = & \mathbf{T\Lambda}\mathbf{I}\mathbf{\Lambda I}\ldots\mathbf{I\Lambda T}^{-1}t^n \\
	              & = & \mathbf{T\Lambda}^n\mathbf{T}^{-1}t^n \\\end{eqnarray*}$$

The matrix function becomes: 

$$\begin{eqnarray*}
	f(\mathbf{A}t) & = & f_0\mathbf{TIT}^{-1} + f_1\mathbf{T\Lambda T}^{-1}t + f_2\mathbf{T\Lambda}^2\mathbf{T}^{-1}t^2 + \cdots + f_n\mathbf{T\Lambda}^n\mathbf{T}^{-1}t^n + \cdots \\
	f(\mathbf{A}t) & = & \mathbf{T}\left(f_0\mathbf{I} + f_1\mathbf{\Lambda}t + f_2\mathbf{\Lambda}^2t^2 + \cdots + f_n\mathbf{\Lambda}^nt^n + \cdots \right)\mathbf{T}^{-1}\\
	               & = & \mathbf{T}f(\mathbf{\Lambda}t)\mathbf{T}^{-1}\end{eqnarray*}$$

The term inside the brackets on the rhs is a diagonal matrix and the
$i^\mathrm{th}$ diagonal element is:

$$f_0+f_1\lambda_it + f_2\lambda_i^2t^2 + \cdots + f_n\lambda_i^nt^ + \cdots$$

From the Taylor series this must be $f(\lambda_i t)$:

$$f(\mathbf{A} t)=\mathbf{T} f(\mathbf{\Lambda} t) \mathbf{T}^{-1}$$

where $f(\mathbf{\Lambda} t)=\mathrm{diag}\left(f(\lambda_i t)\right)$.

### Transition Matrix

In particular, the solution of: 

$$\frac{d\mathbf{x}}{dt}=\mathbf{Ax}$$

given $\mathbf{x}=\mathbf{x}_0$ at $t=0$ is:

$$\mathbf{x}=e^{\mathbf{A}t}\mathbf{x}_0$$

The term $\mathbf{\phi}(t) = e^{\mathbf{A}t}$ is known as the state transition matrix because it shows how time, $t$, transforms the initial state vector into the present one.

### Forced solution

Furthermore, the solution of:

$$\frac{d\mathbf{x}}{dt}=\mathbf{Ax} + \mathbf{Bu}$$ 

given $\mathbf{x}=\mathbf{x}_0$ at $t=0$ is:

$$\mathbf{x}=e^{\mathbf{A}t}\mathbf{x}_0 + \int_0^t e^{\mathbf{A}(t-\tau)}\mathbf{Bu}(\tau)d\tau.$$

### End of Pre-Class Presentation

In the class we will work through a worked example of this approach and contrast it with two alternatives -- diagonalization by similarity transform and Laplace.

## Example

Find the solution of:

$$\frac{d\mathbf{x}}{dt} = \left[ {\begin{array}{*{20}c}
   { - 3} & { - 2}  \\
   1 & 0  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right]u$$ 

given $\mathbf{x}_0=[1,\ 1]^T$, and $u = 1$ for $t\ge 0$.

**Note**: The solutions to this example and the remaining alternatives are available in the form of MATLAB scripts and as Pencasts in OneNote.

### Solution

The state matrix $\mathbf{A}$ is the same as Example 4 from [Section 7.3](https://cpjobling.github.io/eglm03-textbook/07/3/tr4ss), so the transformation matrix is:

$${\bf{T}} = \left[ {\begin{array}{*{20}c}
   1 & 1  \\
   { - 1} & { - 0.5}  \\
\end{array}} \right]$$

with an inverse:

$${\bf{T}}^{ - 1}  = \left[ {\begin{array}{*{20}c}
   { - 1} & { - 2}  \\
   2 & 2  \\
\end{array}} \right]$$

and with corresponding eigenvalues $\lambda_1=-1$ and $\lambda_2=-2$.

Therefore the state transition matrix is: 

$$\begin{eqnarray*}
\mathbf{\phi}(t) & = & e^{\mathbf{A}t}=\mathbf{T}e^{\mathbf{\Lambda}t}\mathbf{T}^{-1} \\
                 & = & \left[ {\begin{array}{*{20}c}
       1 & 1  \\
       { - 1} & { - 0.5}  \\
    \end{array}} \right]\left[ {\begin{array}{*{20}c}
       {e^{ - t} } & 0  \\
       0 & {e^{ - 2t} }  \\
    \end{array}} \right]\left[ {\begin{array}{*{20}c}
       { - 1} & { - 2}  \\
       2 & 2  \\
    \end{array}} \right] \\
                 & = & \left[ {\begin{array}{*{20}c}
       1 & 1  \\
       { - 1} & { - 0.5}  \\
    \end{array}} \right]\left[ {\begin{array}{*{20}c}
       {-e^{ - t} } & {-2e^{ - t} }  \\
       {2e^{ - 2t} } & {2e^{ - 2t} }  \\
    \end{array}} \right] \\
                 & = & \left[ {\begin{array}{*{20}c}
       \left\{ {-e^{ - t} + 2e^{-2t}} \right\} & \left\{ {-2e^{ - t} + 2e^{-2t}} \right\}  \\
       \left\{ {e^{ - t} - e^{-2t}} \right\} & \left\{ {2e^{ - t} - e^{-2t}} \right\}  \\
    \end{array}} \right] \\
\end{eqnarray*}$$

The solution is:

$$\mathbf{x}(t) = \mathrm{term}_1+\int_0^t\mathrm{term}_2 d\tau.$$ 

where $\mathrm{term}_1=\mathbf{\phi}(t)\mathbf{x}_0=e^{\mathbf{A}t}\mathbf{x}_0$.

$$\begin{eqnarray*}
\mathrm{term}_1 & = & \left[ {\begin{array}{*{20}c}
       \left\{ {-e^{ - t} + 2e^{-2t}} \right\} & \left\{ {-2e^{ - t} + 2e^{-2t}} \right\}  \\
       \left\{ {e^{ - t} - e^{-2t}} \right\} & \left\{ {2e^{ - t} - e^{-2t}} \right\}  \\
    \end{array}} \right] \left[ {\begin{array}{*{20}c}
       1  \\
       1  \\
    \end{array}} \right] \\
    & = & \left[ {\begin{array}{*{20}c}
       {\left\{ {\left. { - 3e^{ - t}  + 4e^{ - 2t} } \right\}} \right.}  \\
       {\left\{ {\left. {3e^{ - t}  - 2e^{ - 2t} } \right\}} \right.}  \\
    \end{array}} \right]\end{eqnarray*}$$

and

$$\begin{eqnarray*}
    {\rm{term}}_2  & = & e^{\bf{A}(t - \tau )} {\bf{B}}u = e^{\bf{A}(t - \tau )} \left[ {\begin{array}{*{20}c}
       1  \\
       0  \\
    \end{array}} \right] \times 1 \\
 & = & \left[ {\begin{array}{*{20}c}
   {\left. {\left\{ { - e^{ - (t - \tau )}  + 2e^{ - 2(t - \tau )} } \right.} \right\}}  \\
   {\left. {\left\{ {e^{ - (t - \tau )}  - e^{ - 2(t - \tau )} } \right.} \right\}}  \\
\end{array}} \right]\end{eqnarray*}$$

$$\begin{eqnarray*}
    \int_0^t {\rm{term}_2 d\tau }  & = & \left[ {\begin{array}{*{20}c}
       {\int_0^t {\left. {\left\{ { - e^{ - (t - \tau )}  + 2e^{ - 2(t - \tau )} } \right.} \right\}d\tau } }  \\
       {\int_0^t {\left. {\left\{ {e^{ - (t - \tau )}  - e^{ - 2(t - \tau )} } \right.} \right\}d\tau } }  \\
    \end{array}} \right] \\
    & = &
      \left[ {\begin{array}{*{20}c}
       {\left. {\left\{ { - e^{ - (t - \tau )}  + e^{ - 2(t - \tau )} } \right.} \right\}}  \\
       {\left. {\left\{ {e^{ - (t - \tau )}  - 0.5e^{ - 2(t - \tau )} } \right.} \right\}}  \\
    \end{array}} \right]_{\tau  = 0}^t  \\
     & = & \left[ {\begin{array}{*{20}c}
       { - 1 + e^{ - t}  + 1 - e^{ - 2t} }  \\
       { 1 - e^{ - t}  - 0.5 + 0.5e^{ - 2t} }  \\
    \end{array}} \right] \\
     &  = & \left[ {\begin{array}{*{20}c}
       {e^{ - t}  - e^{ - 2t} }  \\
       {0.5 - e^{ - t}  + 0.5e^{ - 2t} }  \\
    \end{array}} \right]\end{eqnarray*}$$

Combining $\mathrm{term}_1$ and $\int_0^t \mathrm{term}_2 d\tau$ we find the total, forced, response:

$${\bf{x}}(t) = \left[ {\begin{array}{*{20}c}
   { - 3e^{ - t}  + 4e^{ - 2t} }  \\
   {3e^{ - t}  - 2e^{ - 2t} }  \\
\end{array}} \right] + \left[ {\begin{array}{*{20}c}
   {e^{ - t}  - e^{ - 2t} }  \\
   {0.5 - e^{ - t}  + 0.5e^{ - 2t} }  \\
\end{array}} \right]$$

Therefore: 

$${\bf{x}}(t) = \left[ {\begin{array}{*{20}c}
   { - 2e^{ - t}  + 3e^{ - 2t} }  \\
   {0.5 + 2e^{ - t}  - 1.5e^{ - 2t} }  \\
\end{array}} \right].$$

### Alternative solution 1

Repeat Example 1 using the transformation to normal canonical form:

$$\frac{d\mathbf{w}}{t}=\mathbf{\Lambda w}+ \mathbf{T}^{-1}\mathbf{B}u.$$

Using the transformation to normal canonical form:

$$\frac{d\mathbf{w}}{t}=\mathbf{\Lambda w}+ \mathbf{T}^{-1}\mathbf{B}u$$

$$\frac{d{\bf{w}}}{dt} = \left[ {\begin{array}{*{20}c}
   { - 1} & 0  \\
   0 & { - 2}  \\
\end{array}} \right]{\bf{w}} + \left[ {\begin{array}{*{20}c}
   { - 1} & { - 2}  \\
   2 & 2  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right]u;\quad u = 1$$

$$\frac{dw_1}{dt}=-w_1-1\ \textrm{and}\ \frac{dw_2}{dt}=-2w_2 + 2$$

$${\bf{w}}_0  = {\bf{T}}^{ - 1} {\bf{x}}_0  = \left[ {\begin{array}{*{20}c}
   { - 1} & { - 2}  \\
   2 & 2  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   1  \\
   1  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   { - 3}  \\
   4  \\
\end{array}} \right]$$

\begin{eqnarray*}
    w_1 & = & w_{10}e^{-t}-\int_0^t e^{-(t-\tau)} d\tau \\
        & = & -3e^{-t}-\left[e^{-(t-\tau)}\right]_0^t \\
        & = & -3e^{-t}-\left[1 - e^{-t}\right] \\
        & = & -1 -2e^{-t}\end{eqnarray*}

\begin{eqnarray*}
    w_2 & = & w_{20}e^{-2t}+2\int_0^t e^{-2(t-\tau)} d\tau \\
        & = & 4e^{-2t}+2\left[0.5e^{-2(t-\tau)}\right]_0^t \\
        & = & 4e^{-2t}+\left[1 - e^{-2t}\right] \\
        & = & 1 + 3e^{-2t}\end{eqnarray*}$$

$${\bf{x}} = {\bf{Tw}} = \left[ {\begin{array}{*{20}c}
   1 & 1  \\
   { - 1} & { - 0.5}  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   { - 1 - 2e^{ - t} }  \\
   {1 + 3e^{ - 2t} }  \\
\end{array}} \right]$$ Therefore
$${\bf{x}} = \left[ {\begin{array}{*{20}c}
   { - 2e^{ - t}  + 3e^{ - 2t} }  \\
   {0.5 + 2e^{ - t}  - 1.5e^{ - 2t} }  \\
\end{array}} \right]$$

### Alternative solution 2


Solve the problem of example 1 using the Laplace transform method.

Taking Laplace transforms of the state equations, taking account of the
initial conditions:

$$s\mathbf{X}(s)-\mathbf{x}_0=\mathbf{A}\mathbf{X}(s)+\mathbf{B}U(s)$$

$$(s{\bf{I}} - {\bf{A}}){\bf{X}}(s) = {\bf{x}}_0  + {\bf{B}}U(s) = \left[ {\begin{array}{*{20}c}
   1  \\
   1  \\
\end{array}} \right] + \left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right]\frac{1}{s}$$

Therefore

$${\bf{X}}(s) = (s{\bf{I}} - {\bf{A}})^{ - 1} \left[ {\begin{array}{*{20}c}
   {1 + \frac{1}{s}}  \\
   1  \\
\end{array}} \right]$$

$${\rm{Now }}(s{\bf{I}} - {\bf{A}})^{ - 1}  = \left[ {\begin{array}{*{20}c}
   {s + 3} & 2  \\
   { - 1} & s  \\
\end{array}} \right]^{ - 1}  = \frac{1}{(s + 3)s + 2}\left[ {\begin{array}{*{20}c}
   s & { - 2}  \\
   1 & {s + 3}  \\
\end{array}} \right]$$ Therefore 

$$\begin{eqnarray*}
    {\bf{X}}(s) & = & \frac{1}{s^2  + 3s + 2}\left[ {\begin{array}{*{20}c}
       s & { - 2}  \\
       1 & {s + 3}  \\
    \end{array}} \right]\left[ {\begin{array}{*{20}c}
       {1 + \frac{1}{s}}  \\
       1  \\
    \end{array}} \right] \\
                & = & \frac{1}{(s + 1)(s + 2)}\left[ {\begin{array}{*{20}c}
       {s - 1}  \\
       {\frac{s^2  + 4s + 1}{s}}  \\
    \end{array}} \right] \\
    &  = & \left[ {\begin{array}{*{20}c}
       {\frac{s - 1}{(s + 1)(s + 2)}}  \\
       {\frac{s^2  + 4s + 1}{s(s + 1)(s + 2)}}  \\
    \end{array}} \right]\end{eqnarray*}$$

Taking partial fractions: 

$${\bf{X}}(s) = \left[ {\begin{array}{*{20}c}
   {\frac{ - 2}{s + 1} + \frac{3}{s + 2}}  \\
   {\frac{0.5}{s} + \frac{2}{s + 1} + \frac{ - 1.5}{s + 2}}  \\
\end{array}} \right]$$

Finally, taking inverse Laplace transforms:

$${\bf{x}}(t) = \left[ {\begin{array}{*{20}c}
   { - 2e^{ - t}  + 3e^{ - 2t} }  \\
   {0.5 + 2e^{ - t}  - 1.5e^{ - 2t} }  \\
\end{array}} \right]$$

