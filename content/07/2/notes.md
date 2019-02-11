-   Laplace Transform of State Space Models

-   Time Responses for State Space Models

-   Detailed example (in class)

-   Problems (homework)

Transforms of State Space Models {#sec:transforms_of_state_space_models .unnumbered}
================================

The Laplace transform can be used to convert a differential equation
into a transfer function. It can also be used to convert a state space
model into a transfer function. In this lecture we demonstrate how this
is done and we give an example.

The Laplace transform of a vector $\mathbf{v}(t)$ is a vector
$\mathbf{V}(s)$. The elements of $\mathbf{V}(s)$ are the Laplace
transforms of the corresponding elements of the vector $\mathbf{v}(t)$.
For array $$\mathbf{v}(t) = \left[
  \begin{array}{c}
    v_1(t) \\
    v_2(t) \\
    \vdots \\
    v_n(t) \\
  \end{array}
  \right]$$

The Laplace transform of a vector $\mathbf{v}(t)$ is a vector
$\mathbf{V}(s)$. The elements of $\mathbf{V}(s)$ are the Laplace
transforms of the corresponding elements of the vector $\mathbf{v}(t)$.
For array $$\mathbf{v}(t) = \left[
  \begin{array}{c}
    v_1(t) \\
    v_2(t) \\
    \vdots \\
    v_n(t) \\
  \end{array}
  \right]$$

The transformed variables are $$\mathcal{L}\mathbf{v}(t) = \left[
  \begin{array}{c}
   \mathcal{L} v_1(t) \\
   \mathcal{L} v_2(t) \\
    \vdots \\
   \mathcal{L} v_n(t) \\
  \end{array}
  \right] = \left[
  \begin{array}{c}
   V_1(s) \\
   V_2(s) \\
    \vdots \\
   V_n(s) \\
  \end{array}
  \right] = \mathbf{V}(s)$$

The transformed variables are $$\mathcal{L}\mathbf{v}(t) = \left[
  \begin{array}{c}
   \mathcal{L} v_1(t) \\
   \mathcal{L} v_2(t) \\
    \vdots \\
   \mathcal{L} v_n(t) \\
  \end{array}
  \right] = \left[
  \begin{array}{c}
   V_1(s) \\
   V_2(s) \\
    \vdots \\
   V_n(s) \\
  \end{array}
  \right] = \mathbf{V}(s)$$

For example, if[^1] $$\mathbf{v}(t)=\left[ \begin{array}{c}
   \epsilon(t) \\
   e^{-at} \\
   \sin bt \\
  \end{array} \right]$$ then $$\mathbf{V}(s)=\left[ \begin{array}{c}
   1/s \\
   1/s+a \\
   b/(s^2+b^2) \\
  \end{array} \right]$$

For example, if[^2] $$\mathbf{v}(t)=\left[ \begin{array}{c}
   \epsilon(t) \\
   e^{-at} \\
   \sin bt \\
  \end{array} \right]$$ then $$\mathbf{V}(s)=\left[ \begin{array}{c}
   1/s \\
   1/s+a \\
   b/(s^2+b^2) \\
  \end{array} \right]$$

Let us now transform the generalized form of the state equations
obtained in the last lecture. $$\begin{aligned}
  \frac{d\mathbf{x}(t)}{dt} &=&
  \mathbf{A}\mathbf{x}(t)+\mathbf{B}\mathbf{u}(t)\\
  \mathbf{y}(t)&=&\mathbf{C}\mathbf{x}(t)+\mathbf{D}\mathbf{u}(t)\end{aligned}$$
Applying the Laplace transform to both sides of this matrix equation
gives the transform equations $$\begin{aligned}
  s\mathbf{X}(s)-\mathbf{x}(0) &=&
  \mathbf{A}\mathbf{X}(s)+\mathbf{B}\mathbf{U}(s)\\
  \mathbf{Y}(s)&=&\mathbf{C}\mathbf{X}(s)+\mathbf{D}\mathbf{U}(s)\end{aligned}$$
where $\mathbf{x}(0)$ is the vector of initial conditions vector of the
states; $\mathbf{X}(s)$ is the state transform vector; $\mathbf{U}(s)$
input transform vector; $\mathbf{Y}(s)$ is output transform vector.

Let us now transform the generalized form of the state equations
obtained in the last lecture. $$\begin{aligned}
  \frac{d\mathbf{x}(t)}{dt} &=&
  \mathbf{A}\mathbf{x}(t)+\mathbf{B}\mathbf{u}(t)\\
  \mathbf{y}(t)&=&\mathbf{C}\mathbf{x}(t)+\mathbf{D}\mathbf{u}(t)\end{aligned}$$
Applying the Laplace transform to both sides of this matrix equation
gives the transform equations $$\begin{aligned}
  s\mathbf{X}(s)-\mathbf{x}(0) &=&
  \mathbf{A}\mathbf{X}(s)+\mathbf{B}\mathbf{U}(s)\\
  \mathbf{Y}(s)&=&\mathbf{C}\mathbf{X}(s)+\mathbf{D}\mathbf{U}(s)\end{aligned}$$
where $\mathbf{x}(0)$ is the vector of initial conditions vector of the
states; $\mathbf{X}(s)$ is the state transform vector; $\mathbf{U}(s)$
input transform vector; $\mathbf{Y}(s)$ is output transform vector.

For the system in the example the state vector is defined as
$\mathbf{x}=[v_{31}, i_1]^{T}$, the input current is $u$, and the output
variables are all the currents and voltages in the circuit
$\mathbf{y}=[v_{31}, i_1, v_{32}, v_{21}, i_2]^{T}$. The transformed
state space model is therefore that shown in .

[\[slide:slide-l2eg1\]]{#slide:slide-l2eg1 label="slide:slide-l2eg1"}
$$\begin{aligned}
 s\left[\begin{array}{c}
  V_{31} \\
  I_1
\end{array}\right]-\left[\begin{array}{c}
  v_{31}(0) \\
  i_1(0)
\end{array}\right]&=&\left[\begin{array}{cc}
  0 & -1/C \\
  1/L & -R/L
\end{array}\right]\left[\begin{array}{c}
  V_{31} \\
  I_1
\end{array}\right]+\left[\begin{array}{c}
  1/C \\
  0
\end{array}\right]\left[U\right]\\
\left[\begin{array}{c}
  V_{31} \\
  I_1 \\
  V_{32} \\
  V_{21} \\
  I_{2}
\end{array}\right]&=&\left[\begin{array}{cc}
  1 & 0 \\
  0 & 1 \\
  1 & -R \\
  0 & R \\
  0 & -1
\end{array}\right]\left[\begin{array}{c}
  V_{31} \\
  I_1
\end{array}\right]+\left[\begin{array}{c}
  0 \\
  0 \\
  0 \\
  0 \\
  1
\end{array}\right]\left[U\right].\end{aligned}$$

The transform equations may be solved as follows (the Laplace transform
operator $s$ is omitted for brevity).

$$\begin{aligned}
 s\mathbf{X}-\mathbf{x}(0) &=&
  \mathbf{A}\mathbf{X}+\mathbf{B}\mathbf{U}\nonumber\\
 s\mathbf{X}-\mathbf{A}\mathbf{X} &=&
  \mathbf{B}\mathbf{U}+\mathbf{x}(0)\nonumber\\
 \left[s\mathbf{I}-\mathbf{A}\right]\mathbf{X} &=&
  \mathbf{B}\mathbf{U}+\mathbf{x}(0)\nonumber\\
 \mathbf{X} &=&
  \left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}\mathbf{U}+
  \left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{x}(0)\label{eqn:def-of-x}\\
  \mathrm{and}\nonumber \\
  \mathbf{Y}&=& \mathbf{C}\mathbf{X}+\mathbf{D}\mathbf{U}\label{eqn:def-of-y}\end{aligned}$$

The transform equations may be solved as follows (the Laplace transform
operator $s$ is omitted for brevity).

$$\begin{aligned}
 s\mathbf{X}-\mathbf{x}(0) &=&
  \mathbf{A}\mathbf{X}+\mathbf{B}\mathbf{U}\nonumber\\
 s\mathbf{X}-\mathbf{A}\mathbf{X} &=&
  \mathbf{B}\mathbf{U}+\mathbf{x}(0)\nonumber\\
 \left[s\mathbf{I}-\mathbf{A}\right]\mathbf{X} &=&
  \mathbf{B}\mathbf{U}+\mathbf{x}(0)\nonumber\\
 \mathbf{X} &=&
  \left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}\mathbf{U}+
  \left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{x}(0)\label{eqn:def-of-x}\\
  \mathrm{and}\nonumber \\
  \mathbf{Y}&=& \mathbf{C}\mathbf{X}+\mathbf{D}\mathbf{U}\label{eqn:def-of-y}\end{aligned}$$

Substituting $\mathbf{X}$ from
([\[eqn:def-of-x\]](#eqn:def-of-x){reference-type="ref"
reference="eqn:def-of-x"}) into
([\[eqn:def-of-y\]](#eqn:def-of-y){reference-type="ref"
reference="eqn:def-of-y"}) gives $$\label{eqn:def-of-y2}
  \mathbf{Y}=\left[\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}\mathbf{U}+
  \mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{x}(0)\right]+\mathbf{D}\mathbf{U}\nonumber$$
which after gathering terms and simplifying gives
$$\label{eqn:def-of-y3}
  \mathbf{Y}=\left[\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}\right]\mathbf{U}
      +\mathbf{C}
  \left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{x}(0)$$

Substituting $\mathbf{X}$ from
([\[eqn:def-of-x\]](#eqn:def-of-x){reference-type="ref"
reference="eqn:def-of-x"}) into
([\[eqn:def-of-y\]](#eqn:def-of-y){reference-type="ref"
reference="eqn:def-of-y"}) gives $$\label{eqn:def-of-y2}
  \mathbf{Y}=\left[\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}\mathbf{U}+
  \mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{x}(0)\right]+\mathbf{D}\mathbf{U}\nonumber$$
which after gathering terms and simplifying gives
$$\label{eqn:def-of-y3}
  \mathbf{Y}=\left[\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}\right]\mathbf{U}
      +\mathbf{C}
  \left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{x}(0)$$

When the initial conditions of the state-variables are all zero, this
reduces to the transfer matrix model $$\label{eqn:transfer-function}
  \mathbf{Y}=\left[\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}\right]\mathbf{U}$$

When the initial conditions of the state-variables are all zero, this
reduces to the transfer matrix model $$\label{eqn:transfer-function}
  \mathbf{Y}=\left[\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}\right]\mathbf{U}$$

-   The matrix
    $\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}$
    is the *system transfer matrix*.

-   The element of the $i$-th row and $j$-th column is the transfer
    function that relates the $i$-th output transform $Y_i$ to the
    $j$-th input transform $U_j$.

-   For a single-input, single-output (SISO) system, the system transfer
    matrix reduces to a single element transfer function.

<!-- -->

-   The matrix
    $\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}$
    is the *system transfer matrix*.

-   The element of the $i$-th row and $j$-th column is the transfer
    function that relates the $i$-th output transform $Y_i$ to the
    $j$-th input transform $U_j$.

-   For a single-input, single-output (SISO) system, the system transfer
    matrix reduces to a single element transfer function.

<!-- -->

-   The matrix $\left[s\mathbf{I}-\mathbf{A}\right]^{-1}$ is very
    important.

-   It is known as the *resolvent matrix* of the system.

-   It may be written as $$\label{eqn:resolvent}
      \left[s\mathbf{I}-\mathbf{A}\right]^{-1} =
        \frac{\mathrm{adj}\left[s\mathbf{I}-\mathbf{A}\right]}
             {\det\left[s\mathbf{I}-\mathbf{A}\right]}.$$

<!-- -->

-   The matrix $\left[s\mathbf{I}-\mathbf{A}\right]^{-1}$ is very
    important.

-   It is known as the *resolvent matrix* of the system.

-   It may be written as $$\label{eqn:resolvent}
      \left[s\mathbf{I}-\mathbf{A}\right]^{-1} =
        \frac{\mathrm{adj}\left[s\mathbf{I}-\mathbf{A}\right]}
             {\det\left[s\mathbf{I}-\mathbf{A}\right]}.$$

For the system in the example, the resolvent matrix is developed in .

[\[slide:l2eg2\]]{#slide:l2eg2 label="slide:l2eg2"} $$\begin{aligned}
\mathbf{A}&=&\left[\begin{array}{cc}
  0 & -1/C \\
  1/L & -R/L
\end{array}\right] \\
s\mathbf{I}-\mathbf{A}&=&\left[
\begin{array}{cc}
  s & 0 \\
  0 & s
\end{array}
\right] - \left[
\begin{array}{cc}
  0 & -1/C \\
  1/L & -R/L
\end{array}
\right] = \left[
\begin{array}{cc}
  s & +1/C \\
  -1/L & s+R/L
\end{array}\right] \\
\left[s\mathbf{I}-\mathbf{A}\right]^{-1}&=&\frac{
\left[\begin{array}{cc}
  s+R/L & -1/C \\
  +1/L & s
\end{array} \right]
}{s(s+R/L)+1/(LC)}=\frac{\left[\begin{array}{cc}
  s+R/L & -1/C \\
  +1/L & s
\end{array} \right]}{s^2 + (R/L)s + 1/(LC) }\end{aligned}$$

When $\left[s\mathbf{I}-\mathbf{A}\right]^{-1}$ has been obtained, then
the system transfer function is easily obtained through
$\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}$.
For the system in the example, when all outputs are measured, the system
transfer matrix is that shown in .

[\[slide:l2eg3\]]{#slide:l2eg3 label="slide:l2eg3"} $$\begin{aligned}
\left[\begin{array}{cc}
  1 & 0 \\
  0 & 1 \\
  1 & -R \\
  0 & R \\
  0 & -1
\end{array}\right]
\left\{\frac{\left[
\begin{array}{cc}
  s+R/L & -1/C \\
 +1/L & s
\end{array}\right]}{s^2 + (R/L)s +1/(LC)}\right\}
\left[\begin{array}{c}
  1/C \\
  0
\end{array}\right]
 &+& \left[\begin{array}{c}
  0 \\
  0 \\
  0 \\
  0 \\
  1
\end{array} \right]\\
= \left[\begin{array}{cc}
  1 & 0 \\
  0 & 1 \\
  1 & -R \\
  0 & R \\
  0 & -1
\end{array}\right]
\left\{\frac{\left[
\begin{array}{c}
  (1/C)s+R/(LC)  \\
 +1/(LC)
\end{array}\right]}{s^2 + (R/L)s +1/(LC)}\right\}
 &+& \left[\begin{array}{c}
  0 \\
  0 \\
  0 \\
  0 \\
  1
\end{array} \right]\\\end{aligned}$$

$$\begin{aligned}
 &=& \frac{1}{s^2 + (R/L)s
+1/(LC)}\left[\begin{array}{c}
  (1/C)s+R/(LC) \\
  1/(LC) \\
  (1/C)s \\
  R/(LC) \\
  -1/(LC)
\end{array}\right] + \left[\begin{array}{c}
  0 \\
  0 \\
  0 \\
  0 \\
  1
\end{array} \right]\\
&=& \left[\begin{array}{c}
  \frac{(1/C)s+R/(LC)}{s^2 + (R/L)s
+1/(LC)} \\
  \frac{1/(LC)}{s^2 + (R/L)s
+1/(LC)} \\
  \frac{(1/C)s}{s^2 + (R/L)s
+1/(LC)} \\
  \frac{R/(LC)}{s^2 + (R/L)s
+1/(LC)} \\
  -\frac{1/(LC)}{s^2 + (R/L)s
+1/(LC)}+1
\end{array}\right]\end{aligned}$$

In matrix form, when combined with the input and output transforms we
have the situation illustrated in . Each transfer function relates the
corresponding output transform to the input transform. For example
$$V_{31}= \frac{(1/C)s+R/(LC)}{s^2 + (R/L)s
+1/(LC)}\ U.$$

[\[slide:l2final\]]{#slide:l2final label="slide:l2final"}
$$\begin{aligned}
\mathbf{Y}(s)&=&\left[\mathbf{C}\left[s\mathbf{I}-\mathbf{A}\right]^{-1}\mathbf{B}+\mathbf{D}\right]\mathbf{U}(s)\\
\mathbf{Y}(s) &=& \mathbf{G}(s)\mathbf{U}(s)\\
\left[\begin{array}{c}
  V_{31}(s) \\
  I_1(s) \\
  V_{32}(s) \\
  V_{21}(s) \\
  I_{2}(s)
\end{array}\right] &=& \left[\begin{array}{c}
  \frac{(1/C)s+R/(LC)}{s^2 + (R/L)s
+1/(LC)} \\
  \frac{1/(LC)}{s^2 + (R/L)s
+1/(LC)} \\
  \frac{(1/C)s}{s^2 + (R/L)s
+1/(LC)} \\
  \frac{R/(LC)}{s^2 + (R/L)s
+1/(LC)} \\
  -\frac{1/(LC)}{s^2 + (R/L)s
+1/(LC)}+1
\end{array}\right]\mathbf{U}(s).\end{aligned}$$

Note that the denominator is the same for each transfer function, and
that the order of the numerator is less than the denominator except for
one case, for which $$\begin{aligned}
I_2 & = & \left(-\frac{1/(LC)}{s^2 + (R/L)s +1/(LC)}+1\right)U\\
    & = & \frac{-1/{LC}+s^2 + (R/L)s +1/(LC)}{s^2 + (R/L)s
    +1/(LC)}\ U
    \\
    & = &\frac{s^2 + (R/L)s}{s^2 + (R/L)s
    +1/(LC)}\ U\end{aligned}$$ Replacing $s$ by $\frac{d}{dt}$ gives the
corresponding differential equations relating the dependant variable to
the input.

Continuing example from previous lecture

            circ_tf = tf(circ_ss)

Returns a vector of transfer functions.

Some Important Properties {#some-important-properties .unnumbered}
-------------------------

### System poles {#system-poles .unnumbered}

Clearly the denominator of the transfer function is generated by the
matrix inverse which produces the term: $$\det[s\mathbf{I}-\mathbf{A}]$$

This evaluates to the denominator polynomial and the poles of the system
are the roots of the system's characteristic equation:
$$\det[s\mathbf{I}-\mathbf{A}] = 0.$$

The system poles are solutions to the system's characteristic equation
$$\det[s\mathbf{I}-\mathbf{A}] = 0.$$

### System zeros {#system-zeros .unnumbered}

What is the corresponding numerator polynomial of the transfer function,
whose roots give the zeros of the system? The zeros are those values of
$s$ for which the output is zero when the input and states are not zero.
Thus: $$\begin{aligned}
(s\mathbf{I}-\mathbf{A})\mathbf{X}-\mathbf{B}U & = & \mathbf{0} \\
\mathbf{CX}+dU = Y & = & 0\end{aligned}$$ In matrix form:
$$\left[ {\begin{array}{*{20}c}
   {s{\bf{I}} - {\bf{A}}} &  \vdots  & {\bf{B}}  \\
    \cdots  &  \cdots  &  \cdots   \\
   {\bf{C}} &  \vdots  & d  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   {\bf{X}}  \\
    \cdots   \\
   U  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   {\bf{0}}  \\
    \cdots   \\
   0  \\
\end{array}} \right]$$

Zeros are those values of $s$ for which the system output is zero when
the input and states are not zero $$\begin{aligned}
        (s\mathbf{I}-\mathbf{A})\mathbf{X}-\mathbf{B}U & = & \mathbf{0} \\
        \mathbf{CX}+dU = Y & = & 0
    \end{aligned}$$ In matrix form: $$\left[ {\begin{array}{*{20}c}
   {s{\bf{I}} - {\bf{A}}} &  \vdots  & {\bf{B}}  \\
    \cdots  &  \cdots  &  \cdots   \\
   {\bf{C}} &  \vdots  & d  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   {\bf{X}}  \\
    \cdots   \\
   U  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   {\bf{0}}  \\
    \cdots   \\
   0  \\
\end{array}} \right]$$

The only way this can have non-zero solutions in $\mathbf{X}$ and $U$ is
if: $$\det \left[ {\begin{array}{*{20}c}
   {s{\bf{I}} - {\bf{A}}} &  \vdots  & {\bf{B}}  \\
    \cdots  &  \cdots  &  \cdots   \\
   {\bf{C}} &  \vdots  & d  \\
\end{array}} \right] = 0$$ This is another polynomial in $s$ whose roots
give the system zeros and therefore corresponds to the numerator
polynomial of the TF.

The only way this can have non-zero solutions in $\mathbf{X}$ and $U$ is
if: $$\det \left[ {\begin{array}{*{20}c}
   {s{\bf{I}} - {\bf{A}}} &  \vdots  & {\bf{B}}  \\
    \cdots  &  \cdots  &  \cdots   \\
   {\bf{C}} &  \vdots  & d  \\
\end{array}} \right] = 0$$ This is another polynomial in $s$ whose roots
give the system zeros and therefore corresponds to the numerator
polynomial of the TF.

Given this result, an alternative expression for the TF is:
$$\frac{{Y(s)}}{{U(s)}} = \frac{{\det \left[ {\begin{array}{*{20}c}
   {s{\bf{I}} - {\bf{A}}} &  \vdots  & {\bf{B}}  \\
    \cdots  &  \cdots  &  \cdots   \\
   {\bf{C}} &  \vdots  & d  \\
\end{array}} \right]}}{{\det [s{\bf{I}} - {\bf{A}}]}}$$

Given this result, an alternative expression for the TF is:
$$\frac{{Y(s)}}{{U(s)}} = \frac{{\det \left[ {\begin{array}{*{20}c}
   {s{\bf{I}} - {\bf{A}}} &  \vdots  & {\bf{B}}  \\
    \cdots  &  \cdots  &  \cdots   \\
   {\bf{C}} &  \vdots  & d  \\
\end{array}} \right]}}{{\det [s{\bf{I}} - {\bf{A}}]}}$$

            circ_zpk = zpk(circ_ss)

Time Response for State Space Models {#sec:time_response_for_state_space_models .unnumbered}
====================================

In this lecture we shall determine the time response of a system
represented by a state-space model. We shall take as a starting point
the transformed state space model developed in the last lecture. It is
possible to derive the time response directly in the time domain from
the state-equations. I believe however, that the following development
will be easier to understand. I advise you to consult any text book for
the time domain development.

In the last lecture, we showed that the state space model was and that
the transformed equation was In this lecture we will show how the time
response of the state space model may be derived from the transformed
model.

Zero Input Response {#ssec:zero_input_response .unnumbered}
-------------------

We first consider the response of the system to its initial conditions
and zero input. This is the *zero input response* or homogeneous
response of the system. With the input transform $U(s)=0$ the state
equation becomes $$\mathbf{X}(s)=\resolvent{}\mathbf{x}(0).$$ We define
$$\Phis{} = \resolvent{}$$ so that $$\label{eq:l4eq1}
\mathbf{X}(s)=\Phis{}\mathbf{x}(0)$$ is the transform of the zero input
state response. In the time domain, the corresponding state response is
given by the inverse Laplace transform of
equation ([\[eq:l4eq1\]](#eq:l4eq1){reference-type="ref"
reference="eq:l4eq1"})
$$\label{eq:l4eq2} \mathbf{x}(t) = \mathcal{L}^{-1}
\left\{\Phis{}\mathbf{x}(0)\right\},$$ which, since the initial
condition vector $\mathbf{x}(0)$ is a vector of constants becomes:
$$\begin{aligned}
\mathbf{x}(t) & = & \mathcal{L}^{-1}
\left\{\Phis{}\right\}\mathbf{x}(0)\nonumber \\ & = &
\phit{}\mathbf{x}(0).\label{eq:l4eq3}\end{aligned}$$

State Transition Matrix {#ssec:state_transition_matrix .unnumbered}
-----------------------

The vector of time functions $\phit{}$ is known as the *state transition
matrix*. It defines the motion (or *trajectory*) of the state variables
through the $n$-dimensional *state space* from a given set of initial
states.

[\[slide:l4slide1\]]{#slide:l4slide1 label="slide:l4slide1"} The
*resolvent matrix* is defined as $$\Phis{} = \resolvent =
\frac{\adjsIminusA}{\detsIminusA}.$$ The resolvent matrix is a matrix of
rational polynomials in the Laplace transform variable $s$. The state
transition matrix is $$\phit{}
=
\mathcal{L}^{-1}\left\{\frac{\adjsIminusA}{\detsIminusA}\right\}.$$ What
is the form of this function?

[\[slide:l4slide2\]]{#slide:l4slide2 label="slide:l4slide2"} The adjoint
matrix $\adjsIminusA$ is a matrix of polynomials each of which is of
order $n-1$ or less. The determinant
$$\detsIminusA{} = \left|\begin{array}{cccc}
  s-a_{11} & -a_{12} & \cdots & -a_{1n} \\
  -a_{21} & s-a_{22} & \cdots & -a_{2n} \\
  \vdots & \vdots & \ddots & \vdots \\
  -a_{n1} & -a_{2n} & \cdots & s-a_{nn}
\end{array}\right|$$ is called the *characteristic polynomial*. It is
always a polynomial of degree $n$. Therefore each element of the
resolvent matrix $\Phis{}$ is of the form
$$\frac{b_{n-1}s^{n-1}+ \cdots + b_0}{s^n + a_{n-1}s^{n-1}+\cdots+a_0}.$$

[\[slide:l4slide3\]]{#slide:l4slide3 label="slide:l4slide3"} The
coefficients $b_i$ of each element of the resolvent matrix $\Phis{}$
depend on the form of the system. The characteristic polynomial
$\detsIminusA$ is the common denominator of all elements of $\Phis{}$.
It may be factorized: $$\begin{aligned}
\detsIminusA{}&=&s^n + a_{n-1}s^{n-1} + \cdots + a_1s + a_0
\\
&=&(s - p_1)(s-p_2)\cdots(s-p_n)\end{aligned}$$ The values $p_i$ are
known as the *characteristic* (or *eigen*) values of the state matrix
$\mathbf{A}$. The characteristic values are the *poles* of the system!

[\[slide:l4slide4\]]{#slide:l4slide4 label="slide:l4slide4"} If we make
a partial fraction expansion of the characteristic equation, then for
the $i$-$j$th element of the resolvent matrix we have
$$\Phi_{ij}(s)=\frac{r_1}{s-p_1}+\frac{r_2}{s-p_2} + \cdots +
\frac{r_n}{s-p_n}$$(where the coefficient $r_i$ is the so called
*residue* of the partial fraction expansion determined at the value
$s=p_i$). Inverse Laplace transforming this equation we finally obtain
the *state transition* function:
$$\phi_{ij}(t) = r_1 e^{p_1 t} + r_2 e^{p_2 t} + \cdots + r_n
e^{p_n t}.$$

[\[slide:l4slide5\]]{#slide:l4slide5 label="slide:l4slide5"} The state
transition matrix $\phit{}$ is an $n\times n$ matrix, each element of
which is a linear combination of the $n$ "mode functions" (or simply
*modes*) $$e^{p_1 t},\ e^{p_2 t},\ \ldots,\ e^{p_n t}.$$ Each mode is
constructed from the eigen values ($p_1,\ p_2,\ \ldots,\ p_n$) of the
state matrix $\mathbf{A}$. The eigen values are also known as the
*poles* of the system.

Example {#example .unnumbered}
-------

If $$\mathbf{A} = \left[\begin{array}{cc}
  0 & 1 \\
  -6 & -5
\end{array}\right]$$ $$\sIminusA = \left[\begin{array}{cc}
  s & -1 \\
  6 & s+5
\end{array}\right]$$ so $$\detsIminusA = s^2 + 5s + 6 = (s+2)(s+3).$$
The characteristic values of the system are $p_1=-2$ and $p_2=-3$ so the
modes are $e^{-2t}$ and $e^{-3t}$.

Now $$\adjsIminusA = \left[\begin{array}{cc}
  s+5 & 1 \\
  -6 & s
\end{array}\right]$$ so the resolvent matrix is
$$\Phis{} = \left[\begin{array}{cc}
  \frac{s+5}{(s+2)(s+3)} & \frac{1}{(s+2)(s+3)} \\
  \frac{-6}{(s+2)(s+3)} & \frac{s}{(s+2)(s+3)}
\end{array}\right].$$ Expanding each element of $\Phis$ we get
$$\Phis{} = \left[\begin{array}{cc}
  \frac{3}{s+2}-\frac{2}{s+3} & \frac{1}{s+2}-\frac{1}{s+3} \\
  \frac{-6}{s+2}+\frac{6}{s+3} & -\frac{2}{s+2}+\frac{3}{s+3}
\end{array}\right].$$ Inverse Laplace transforming this we get the final
state transition matrix, representing the zero-input response of the
system: $$\phit{}=\left[\begin{array}{cc}
  3e^{-2t}-2e^{-3t} & e^{-2t}-e^{-3t} \\
 -6e^{-2t}+6e^{-3t} & -2e^{-2t}+3e^{-3t}
\end{array}\right].$$

Note that, by an alternative derivation[^3], we can show that
$$\phit{}=e^{\mathbf{A}t}$$ where $e^{\mathbf{A}t}$ is called the matrix
exponential.

Unforced system response {#unforced-system-response .unnumbered}
------------------------

To determine the response of the system to the initial state we recall
that $$\mathbf{x} = \mathbf{B}\mathbf{\Phis} \mathbf{x}(0)$$ and putting
this together with the definition of $\mathbf{Y(s)}$ we can determine
the unforced system response of a system.

[\[slide:l4s11a\]]{#slide:l4s11a label="slide:l4s11a"} For non-zero
initial conditions and zero input we have $$\begin{aligned}
\label{eq:l4eq6a}
  \mathbf{X}(s)&=&\resolvent{}\mathbf{x}(0) \\
&=& \Phis{}\mathbf{x}(0) \label{eq:l4eq7a}\end{aligned}$$ The zero-input
system output transform is therefore given by $$\label{eq:l4eq8a}
 \mathbf{Y}_\mathrm{zi}(s)=\mathbf{C}\Phis{}\mathbf{x}(0).$$

Because we have already shown that $\phi(t)$ will be a linear
combination of modes, the unforced system response $y(t)$ will be
another linear combination of the same modes.

The Zero State Response {#the-zero-state-response .unnumbered}
-----------------------

We now consider the case where the initial condition vector
$\mathbf{x}(0)=\mathbf{0}$ and we will obtain the response of the system
to an input. This is called the *zero state response* of the system.

[\[slide:l4s11\]]{#slide:l4s11 label="slide:l4s11"} For zero initial
conditions we have $$\begin{aligned}
\label{eq:l4eq6}
  \mathbf{X}(s)&=&\resolvent{}\mathbf{B}\mathbf{U}(s) \\
&=& \Phis{}\mathbf{B}\mathbf{U}(s) \label{eq:l4eq7}\end{aligned}$$ The
system output transform (forced response) is given by $$\label{eq:l4eq8}
 \mathbf{Y}_{\mathrm{zs}}(s)=\left[\mathbf{C}\Phis{}\mathbf{B}+\mathbf{D}\right]\mathbf{U}(s)$$
(where $\mathbf{C}\Phis{}\mathbf{B}+\mathbf{D}$ is the system transfer
matrix).

Full System Response {#full-system-response .unnumbered}
--------------------

The full system response for the state-space model is simply the sum of
the zero-state and zero-input responses: $$\begin{aligned}
\mathbf{Y}_{\mathrm{full}}(s) &=& \mathbf{Y}_{\mathrm{zs}}(s) +
\mathbf{Y}_{\mathrm{zi}}(s)\\ &=&
\mathbf{C}\Phis{}\left[\mathbf{x}(0)+\mathbf{B}\mathbf{U}(s)\right] + \mathbf{DU}(s).\end{aligned}$$

The full system response for the state-space model is simply the sum of
the zero-state and zero-input responses: $$\begin{aligned}
\mathbf{Y}_{\mathrm{full}}(s) &=& \mathbf{Y}_{\mathrm{zs}}(s) +
\mathbf{Y}_{\mathrm{zi}}(s)\\ &=&
\mathbf{C}\Phis{}\left[\mathbf{x}(0)+\mathbf{B}\mathbf{U}(s)\right] + \mathbf{DU}(s).\end{aligned}$$

In the class we will reinforce these concepts by working through an
example in detail.

[\[slide:l4s12\]]{#slide:l4s12 label="slide:l4s12"} Let
$$\begin{aligned}
\dot{\mathbf{x}}&=&\left[\begin{array}{cc}
  0 & 1 \\
  -6 & -5
\end{array}\right]\mathbf{x}+\left[\begin{array}{cc}
  2 & 1 \\
 -1 & 0
\end{array}\right]\mathbf{u}\\
\mathbf{y}&=&\left[\begin{array}{cc}
  2 & -1 \\
  0 & 1
\end{array}\right]\mathbf{x}\\ \mathbf{u}&=&\left[\begin{array}{c}
  e^{-t} \\
  \epsilon(t)
\end{array}\right].\end{aligned}$$ Calculate the full system response
for this system given that the initial conditions are
$\mathbf{x}(0)=[-1, 1]^T$.

Solution {#solution .unnumbered}
--------

The transfer function is $$\begin{aligned}
\mathbf{G}(s)&=&\mathbf{C}\Phis{}\mathbf{B} =
\left[\begin{array}{cc}
  2 & -1 \\
  0 & 1
\end{array}\right]
\left[\begin{array}{cc}
  \frac{s+5}{(s+2)(s+3)} & \frac{1}{(s+2)(s+3)} \\
  \frac{-6}{(s+2)(s+3)} & \frac{s}{(s+2)(s+3)}
\end{array}\right]\left[\begin{array}{cc}
  2 & 1 \\
 -1 & 0
\end{array}\right]\\
&=&\left[\begin{array}{cc}
  2 & -1 \\
  0 & 1
\end{array}\right]
\left[\begin{array}{cc}
  \frac{2s+9}{(s+2)(s+3)} & \frac{s+5}{(s+2)(s+3)} \\
  \frac{-s-12}{(s+2)(s+3)} & \frac{-6}{(s+2)(s+3)}
\end{array}\right]\\
&=& \left[\begin{array}{cc}
  \frac{5s+30}{(s+2)(s+3)} & \frac{2s+16}{(s+2)(s+3)} \\
   \frac{-s-12}{(s+2)(s+3)} & \frac{-6}{(s+2)(s+3)}
\end{array}\right]\end{aligned}$$

The transform of the input vector is
$$\mathbf{U}(s) = \mathcal{L}\left[\begin{array}{c}
  e^{-t} \\
  \epsilon(t)
\end{array}\right] = \left[\begin{array}{c}
  \frac{1}{s+1} \\
  \frac{1}{s}
\end{array}\right].$$ Hence $$\begin{aligned}
\mathbf{Y}(s) &=& \left[\begin{array}{cc}
  \frac{5s+30}{(s+2)(s+3)} & \frac{2s+16}{(s+2)(s+3)} \\
   \frac{-s-12}{(s+2)(s+3)} & \frac{-6}{(s+2)(s+3)}
\end{array}\right]\left[\begin{array}{c}
  \frac{1}{s+1} \\
  \frac{1}{s}
\end{array}\right]\\
&=&\left[\begin{array}{c}
  \frac{7s^2+48s+16}{s(s+1)(s+2)(s+3)} \\
  \frac{-(s^2+18s+6)}{s(s+1)(s+2)(s+3)}
\end{array}\right] = \left[\begin{array}{c}
  \frac{8/3}{s}+\frac{25/2}{s+1}-\frac{26}{s+2}+\frac{65/6}{s+3} \\
   -\frac{1}{s}-\frac{11/2}{s+1}+\frac{13}{s+2}-\frac{13/2}{s+3}
\end{array}\right]\end{aligned}$$

Inverse Laplace transforming the previous result gives the zero-state
output response of the system: $$\left[\begin{array}{c}
  \frac{8}{3}\epsilon(t)+\frac{25}{2}e^{-t}-26e^{-2t}+\frac{65}{6}e^{-3t} \\
   -\epsilon(t)-\frac{11}{2}e^{-t}+13e^{-2t}-\frac{13}{2}e^{-3t}
\end{array}\right].$$ Note that response is now a linear combination of
the system modes ($e^{-2t}$ and $e^{-3t}$) and the input modes
($\epsilon(t)$ \[the unit step function\] and $e^{-t}$).

If the initial condition vector $\mathbf{x}(0)=[-1, 1]^T$ what is the
total response of the system?

$$\begin{aligned}
 \mathbf{Y}(s)&=&
\left[\begin{array}{cc}
  2 & -1 \\
  0 & 1
\end{array}\right]
\left[\begin{array}{cc}
  \frac{s+5}{(s+2)(s+3)} & \frac{1}{(s+2)(s+3)} \\
  \frac{-6}{(s+2)(s+3)} & \frac{s}{(s+2)(s+3)}
\end{array}\right]\\
&\times& \left\{\left[\begin{array}{c}
  -1 \\
  1
\end{array}\right]+\left[\begin{array}{cc}
  2 & 1 \\
  -1 & 0
\end{array}\right]\left[\begin{array}{c}
  \frac{1}{s+1} \\
  \frac{1}{s}
\end{array}\right]\right\}\\
&=& \left[\begin{array}{cc}
  \frac{2s+16}{(s+2)(s+3)} & \frac{-s+2}{(s+2)(s+3)} \\
  \frac{-6}{(s+2)(s+3)} & \frac{s}{(s+2)(s+3)}
\end{array}\right]\left[\begin{array}{c}
  \frac{-s^2+2s+1}{s(s+1)} \\
  \frac{s^2}{s(s+1)}
\end{array}\right]\end{aligned}$$

$$\begin{aligned}
\mathbf{Y}(s)&=& \left[\begin{array}{c}
  \frac{-3s^2-10s^2+34s+16}{s(s+1)(s+2)(s+3)} \\
  \frac{s^3+6s^2-12s-6}{s(s+1)(s+2)(s+3)}
\end{array}\right]\\
\mathbf{y}(t)&=& \left[\begin{array}{c}
  \frac{8}{3}\epsilon(t)+\frac{25}{2}e^{-t}-34e^{-2t}+\frac{59}{6}e^{-3t} \\
   -\epsilon(t)-\frac{11}{2}e^{-t}+17e^{-2t}-\frac{19}{2}e^{-3t}
\end{array}\right].\end{aligned}$$

We can use the symbolic toolbox!

    A = [0, 1; -6, -5]; B = [2, 1; -1, 0];
    C = [2, -1; 0, 1]; D = [0, 0; 0, 0];
    x0 = [-1, 1]';
    syms t s
    u = [exp(-t),heaviside(t)];
    U = laplace(u)
    PhiS = inv(s*eye(2) - A)
    Yzs = (C*PhiS*B + D)*Us
    Yzi = C*PhiS*x0
    Ytotal = Yzs + Yzi
    y = ilaplace(Ytotal)

-   The functions *step* and *impulse* will produce step impulse
    responses of a system with zero initial conditions.

-   The function *lsim* can be used to determine the state space
    response to arbitrary inputs.

-   If you need to simulate a system with arbitrary inputs and
    predefined initial conditions, you should use the *Linear Simulation
    Tool* which is opened when you execute `lsim(model)`. Visit the
    Matlab Control Systems Toolbox help pages to find out more.

Problems {#problems .unnumbered}
========

1.  Prove that the impulse response of a state-space model is
    $$\begin{aligned}
    \mathbf{g}(t)&=&\mathcal{L}^{-1}\left\{\mathbf{C}\Phis{}\mathbf{B}+\mathbf{D}\right\}\\
    &=&\mathcal{L}^{-1}\left\{\mathbf{G}(s)\right\}\end{aligned}$$

2.  [\[l4q1\]]{#l4q1 label="l4q1"} For the circuit example introduced in
    Lecture 13, if $L=100$ mH, $C=1000$ $\mu$F and $R=20$ $\Omega$, and
    the output is taken to be the voltage $v_{21}(t)$ across the
    resistor, determine the following:

    1.  The state transition matrix

    2.  The zero input response given an initial voltage across the
        capacitor $v_{32}(0)=10$ V and assuming the current in the
        inductor is initially $0$ A.

    3.  The zero state output and state variable responses given an
        input current of $i=0.5e^{-t}$

    4.  The total output response

3.  Use state-space methods to find the total solution to the
    differential equation
    $$\frac{d^2(t)}{dt^2}+20\frac{dy(t)}{dt}+10y(t) = 16u(t)$$ given the
    initial conditions $\frac{dy(0)}{dt}=1$ and $y(0)=0$ and
    $u(t)=\epsilon(t)$.

4.  Show that the state space models $$\begin{aligned}
    \dot{\mathbf{x}}&=&\left[\begin{array}{cc}
      0 & 1 \\
      -100 & -200
    \end{array}\right]+\left[\begin{array}{c}
      0 \\
      200000
    \end{array}\right]u\\ y&=&[1, 0]\mathbf{x}\end{aligned}$$ and
    $$\begin{aligned}
    \dot{\mathbf{x}}&=&\left[\begin{array}{cc}
      -0.50126 & 0 \\
      0 & -199.5
    \end{array}\right]+\left[\begin{array}{c}
      1124.2 \\
      2.0051\times 10^{5}
    \end{array}\right]u\\ y&=&[0.89398   -0.0050125]\mathbf{x}\end{aligned}$$
    have the same input-output relationship (transfer function).
    Construct the state transition matrix $\phit$ and the zero state and
    zero input output response equations for both systems and observe
    how the modes of the system are represented in the system output
    equations. Compare the result with that of
    question [\[l4q1\]](#l4q1){reference-type="ref" reference="l4q1"}
    which has the same transfer function! What does this tell you about
    the transfer function as a representation of a system?

[^1]: $\epsilon(t)$ is the unit step function $\epsilon(t)=0$ for
    $t < 0$; $\epsilon(t)=1$ for $t \ge 0$.

[^2]: $\epsilon(t)$ is the unit step function $\epsilon(t)=0$ for
    $t < 0$; $\epsilon(t)=1$ for $t \ge 0$.

[^3]: For a first order differential equation $$\frac{dx}{dt}=ax$$ so
    the Laplace transform is $$\begin{aligned}
    sX(s) - x(0) & = &
    aX(s)\\ X(s)(s - a)& = & x(0)\\ X(s)
    &=&\frac{x(0)}{s-a}.\end{aligned}$$ The inverse laplace transform of
    the final equation gives $$x(t) = e^{at}.$$ For the vector case
    $$s\mathbf{X}(s)-\mathbf{x}(0)=\mathbf{A}\mathbf{X(s)}$$ so by
    comparison $$\mathbf{x}(t)=e^{\mathbf{A} t}.$$ The proper proof is
    of course a little more involved!
