The canonical forms described in the last lecture give different
descriptions of the same transfer function (TF) and are therefore
equivalent in their overall input-output relationship. This means that
it should be possible to convert one canonical form into another by the
operation of simple matrix operations. Furthermore, by transforming a
system to the *normal form*, determining the response and mapping back,
it is possible to determine the total system response of any state space
system.

The *eigenvalues* of the state matrix $\mathbf{A}$ have an important
influence on the system response and understanding them is key to
understanding the general solution of state-space systems.

In this lecture we define eigenvalues and eigenvectors, show the system
transformation method and prove that it has no impact on the system
eigenvalues, show how it can be used to transform an arbitrary
state-space model into one with a diagonal (normal) structure, and
finally we use these results to find a general time-response solution to
the state space equations.

-   For a given transfer function the canonical forms are equivalent in
    their input-output relationships.

-   We can convert one form of canonical system into another by the
    application of simple matrix operations.

-   Transforming to normal form simplifies the calculation of system
    response.

-   The *eigenvalues* of the $\mathbf{A}$ matrix are key to the process.

-   Knowledge of a system's eigenvalues means that we can determine the
    system response of any LTI system.

<!-- -->

-   Eigenvalues and eigenvectors

-   System transformation

-   Diagonalization of a state space model

-   Solution to the general state equations

Eigenvalues and Eigenvectors {#sub:eigenvalues_and_eigenvectors .unnumbered}
============================

Definitions {#ssub:Definitions .unnumbered}
-----------

*Eigenvector*:[^1] The eignevectors of the matrix $\mathbf{A}$ are all
vectors $\mathbf{x}_i\ne\mathbf{0}$, which under the transformation
$\mathbf{A}$ become multiples of themselves; that is,
$$\label{eq:eigenvector}
\mathbf{A}\mathbf{x}_i=\lambda_i\mathbf{x}_i$$ where each $\lambda_i$ is
a constant called an *eigenvalue*.

The eignevectors of the matrix $\mathbf{A}$ are all vectors
$\mathbf{x}_i\ne\mathbf{0}$, which under the transformation $\mathbf{A}$
become multiples of themselves; that is, $$\label{eq:eigenvector}
\mathbf{A}\mathbf{x}_i=\lambda_i\mathbf{x}_i$$ where each $\lambda_i$ is
a constant called an *eigenvalue*.

illustrates this definition of eigenvectors. If $\mathbf{Ax}$ is not
collinear with $\mathbf{x}$ after the transformation, $\mathbf{x}$ is
not an eigenvector. If $\mathbf{Ax}$ is collinear with $\mathbf{x}$
after the transformation, $\mathbf{x}$ is an eigenvector.

[\[slide:eigenvector\]]{#slide:eigenvector label="slide:eigenvector"}

To be an eigenvector, the transformation $\mathbf{Ax}$ must be collinear
with $\mathbf{x}$. Thus, in (a), $\mathbf{x}$ is not an eigenvector: in
(b), it is.

*Eigenvalues*: The eigenvalues of the matrix $\mathbf{A}$ are the values
of $\lambda_i$ that satisfy
([\[eq:eigenvector\]](#eq:eigenvector){reference-type="ref"
reference="eq:eigenvector"}) for $\mathbf{x}_i\ne \mathbf{0}$.

To find the eigenvectors, we arrange equation
([\[eq:eigenvector\]](#eq:eigenvector){reference-type="ref"
reference="eq:eigenvector"}). Eigenvectors, $\mathbf{x}_i$, satisfy
$$\label{eq:581}
    \mathbf{0}=(\lambda_i\mathbf{I}-\mathbf{A})\mathbf{x}_i$$ Solving
for $\mathbf{x}_i$ by premultiplying both sides by
$(\lambda_i\mathbf{I}-\mathbf{A})^{-1}$ yields
$$\mathbf{x}_i = (\lambda_i\mathbf{I}-\mathbf{A})^{-1}\mathbf{0} =
           \frac{\textrm{adj}(\lambda_i\mathbf{I}-\mathbf{A})^{-1}}{\det(\lambda_i\mathbf{I}-\mathbf{A})^{-1}}\mathbf{0}$$
Since $\mathbf{x}_i\ne \mathbf{0}$, a nonzero solution exists if
$$\label{eq:eigenvalue}
    \det(\lambda_i\mathbf{I}-\mathbf{A}) = \mathbf{0} \label{eq:eigenvalue}$$
From which $\lambda_i$, the eigenvalues, can be found.

The eigenvalues of the matrix $\mathbf{A}$ are the values of $\lambda_i$
that satisfy ([\[eq:eigenvector\]](#eq:eigenvector){reference-type="ref"
reference="eq:eigenvector"}) for $\mathbf{x}_i\ne \mathbf{0}$.

The eigenvectors, $\mathbf{x}_i$, satisfy
$$\mathbf{0}=(\lambda_i\mathbf{I}-\mathbf{A})\mathbf{x}_i \label{eq:581}$$
Solving for $\mathbf{x}_i$ (see notes), a nonzero solution exists if
$$\label{eq:eigenvalue}
    \det(\lambda_i\mathbf{I}-\mathbf{A}) = \mathbf{0} \label{eq:eigenvalue}$$
From which $\lambda_i$, the eigenvalues, can be found.

We are now ready to show how to find the eigenvectors $\mathbf{x}_i$.
First we find the eigenvalues, $\lambda_i$, using
$\det(\lambda_i\mathbf{I}-\mathbf{A} = \mathbf{0})$, and then we use
equation ([\[eq:eigenvector\]](#eq:eigenvector){reference-type="ref"
reference="eq:eigenvector"}) to find the eigenvectors.

To find the eigenvectors $\mathbf{x}_i$ of a system matrix $\mathbf{A}$

1.  First find the eigenvalues, $\lambda_i$, using
    $\det(\lambda_i\mathbf{I}-\mathbf{A}) = \mathbf{0}$

2.  Use $\mathbf{A}\mathbf{x}_i=\lambda_i\mathbf{x}_i$ to find the
    eigenvectors.

We will work through an example in class.

Example 1: finding eigenvectors {#ssub:example_1 .unnumbered}
-------------------------------

**Problem**: Find the eigenvectors of the matrix
$${\bf{A}} = \left[ {\begin{array}{*{20}c}
       { - 3} & 1  \\
       1 & { - 3}  \\
    \end{array}} \right]$$

**SOLUTION**: The eigenvectors, $\mathbf{x}_i$, satisfy Eq.
([\[eq:581\]](#eq:581){reference-type="ref" reference="eq:581"}). First,
use $\det(\lambda_i\mathbf{I}-\mathbf{A})=0$ to find the eigenvalues,
$\lambda_i$, for Eq. ([\[eq:581\]](#eq:581){reference-type="ref"
reference="eq:581"}): $$\begin{array}{c}
 \det (\lambda {\bf{I}} - {\bf{A}}) = \left| {\left[ {\begin{array}{*{20}c}
   \lambda  & 0  \\
   0 & \lambda   \\
\end{array}} \right] - \left[ {\begin{array}{*{20}c}
   { - 3} & 1  \\
   1 & { - 3}  \\
\end{array}} \right]} \right| \\
  = \left| {\begin{array}{*{20}c}
   {\lambda  + 3} & { - 1}  \\
   { - 1} & {\lambda  + 3}  \\
\end{array}} \right| \\
  = \lambda ^2  + 6\lambda  + 8 \\
 \end{array}$$

from which the eigenvalues are $\lambda_1 = -2$ and $\lambda_2 = -4$.

Using Eq. ([\[eq:eigenvector\]](#eq:eigenvector){reference-type="ref"
reference="eq:eigenvector"}) successively with each eigenvalue, we have
$$\begin{array}{l}
 {\bf{Ax}}_i  = \lambda {\bf{x}}_i  \\
 \left[ {\begin{array}{*{20}c}
   { - 3} & 1  \\
   1 & { - 3}  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   {x_1 }  \\
   {x_2 }  \\
\end{array}} \right] =  - 2\left[ {\begin{array}{*{20}c}
   {x_1 }  \\
   {x_2 }  \\
\end{array}} \right] \\
 \end{array}$$ or $$\begin{aligned}
-3x_1+x_2 & = & -2x_1 \\
x_1-3x_2 & = & -2x_2\end{aligned}$$ from which $x_1 = x_2$. Thus,
$$\label{ex1:ev1}
{\bf{x}} = \left[ {\begin{array}{*{20}c}
   c  \\
   c  \\
\end{array}} \right]$$ Using the other eigenvalue, $-4$, we have
$$\label{ex1:ev2}
{\bf{x}} = \left[ {\begin{array}{*{20}c}
   c  \\
   -c  \\
\end{array}} \right]$$ Using Eqs.
([\[ex1:ev1\]](#ex1:ev1){reference-type="ref" reference="ex1:ev1"}) and
([\[ex1:ev2\]](#ex1:ev2){reference-type="ref" reference="ex1:ev2"}), one
choice of eigenvectors is $$\label{ex1:solution}
{\bf{x}}_1  = \left[ {\begin{array}{*{20}c}
   1  \\
   1  \\
\end{array}} \right]\quad {\rm{and}}\quad {\bf{x}}_2  = \left[ {\begin{array}{*{20}c}
   1  \\
   { - 1}  \\
\end{array}} \right]$$

Transformation of State Space Models {#transformation-of-state-space-models .unnumbered}
====================================

Suppose we have a state space model with states $\mathbf{x}$ and
matrices $\mathbf{A}$, $\mathbf{B}$, $\mathbf{C}$ and $\mathbf{D}$ and
we wish to transform to a model with states $\mathbf{w}$ where
$\mathbf{x}=\mathbf{Tw}$. $\mathbf{T}$ is the *transformation matrix*
for the states.

$$\begin{aligned}
	\frac{d\mathbf{x}}{dt} & = & \mathbf{A}\mathbf{x}+\mathbf{B}\mathbf{u} \\
	\frac{d\mathbf{Tw}}{dt} & = & \mathbf{ATw}+\mathbf{B}\mathbf{u} \\
	\mathbf{T}\frac{d\mathbf{w}}{dt} & = & \mathbf{ATw}+\mathbf{B}\mathbf{u} \\
	\frac{d\mathbf{w}}{dt} & = & \mathbf{T}^{-1}\mathbf{ATw}+\mathbf{T}^{-1}\mathbf{B}\mathbf{u} \\	\end{aligned}$$

Suppose we have a state space model with states $\mathbf{x}$ and
matrices $\mathbf{A}$, $\mathbf{B}$, $\mathbf{C}$ and $\mathbf{D}$ and
we wish to transform to a model with states $\mathbf{w}$ where
$\mathbf{x}=\mathbf{Tw}$. $\mathbf{T}$ is the *transformation matrix*
for the states.

$$\begin{aligned}
	\frac{d\mathbf{x}}{dt} & = & \mathbf{A}\mathbf{x}+\mathbf{B}\mathbf{u} \\
	\frac{d\mathbf{Tw}}{dt} & = & \mathbf{ATw}+\mathbf{B}\mathbf{u} \\
	\mathbf{T}\frac{d\mathbf{w}}{dt} & = & \mathbf{ATw}+\mathbf{B}\mathbf{u} \\
	\frac{d\mathbf{w}}{dt} & = & \mathbf{T}^{-1}\mathbf{ATw}+\mathbf{T}^{-1}\mathbf{B}\mathbf{u} \\	\end{aligned}$$

Similarly for the output equation: $$\begin{aligned}
	\mathbf{y} & = & \mathbf{Cx} + \mathbf{Du} \\
	\mathbf{y} & = & \mathbf{CTw} + \mathbf{Du} \\	\end{aligned}$$

Similarly for the output equation: $$\begin{aligned}
	\mathbf{y} & = & \mathbf{Cx} + \mathbf{Du} \\
	\mathbf{y} & = & \mathbf{CTw} + \mathbf{Du} \\	\end{aligned}$$

Therefore the new state space model is:

$$\begin{aligned}
	\frac{d\mathbf{w}}{dt} & = & \mathbf{A}'\mathbf{w} + \mathbf{B}'\mathbf{u} \\
	\mathbf{y} & = & \mathbf{C}'\mathbf{w}+\mathbf{D}'\mathbf{u}\end{aligned}$$

where $\mathbf{A}'=\mathbf{T}^{-1}\mathbf{A}\mathbf{T}$,
$\mathbf{B}'=\mathbf{T}^{-1}\mathbf{B}$, $\mathbf{C}'=\mathbf{CT}$, and
$\mathbf{D}'=\mathbf{D}$.

Therefore the new state space model is:

$$\begin{aligned}
	\frac{d\mathbf{w}}{dt} & = & \mathbf{A}'\mathbf{w} + \mathbf{B}'\mathbf{u} \\
	\mathbf{y} & = & \mathbf{C}'\mathbf{w}+\mathbf{D}'\mathbf{u}\end{aligned}$$

where $\mathbf{A}'=\mathbf{T}^{-1}\mathbf{A}\mathbf{T}$,
$\mathbf{B}'=\mathbf{T}^{-1}\mathbf{B}$, $\mathbf{C}'=\mathbf{CT}$, and
$\mathbf{D}'=\mathbf{D}$.

-   Notice that the state matrix $\mathbf{A}'$for the new model is a
    *similarity transformation* on the $\mathbf{A}$ matrix of the
    original system and therefore they share the same set of
    eigenvalues.

-   This should not be surprising since the poles of the system being
    modelled correspond to the eigenvalues of the state matrix, whatever
    the choice of states.

Proof {#sub:invariance_of_system_transformation .unnumbered}
-----

$$\begin{aligned}
	\mathbf{Ax} & = & \lambda\mathbf{x} \\
	\mathbf{T}^{-1}\mathbf{Ax} & = & \lambda\mathbf{T}^{-1}\mathbf{x} \\	\end{aligned}$$
Let $\mathbf{x}=\mathbf{Tw}$ then $$\begin{aligned}
	\mathbf{T}^{-1}\mathbf{ATw} & = & \lambda\mathbf{T}^{-1}\mathbf{Tw} \\	
	(\mathbf{T}^{-1}\mathbf{AT})\mathbf{w} & = & \lambda\mathbf{w} \\	\end{aligned}$$

The transformation $\mathbf{T}^{-1}\mathbf{AT}$ is a *similarity
transform*. That is the eigenvalues are the same as for $\mathbf{A}$.

*Proof* $$\begin{aligned}
	\mathbf{Ax} & = & \lambda\mathbf{x} \\
	\mathbf{T}^{-1}\mathbf{Ax} & = & \lambda\mathbf{T}^{-1}\mathbf{x} \\	\end{aligned}$$
Let $\mathbf{x}=\mathbf{Tw}$ then $$\begin{aligned}
	\mathbf{T}^{-1}\mathbf{ATw} & = & \lambda\mathbf{T}^{-1}\mathbf{Tw} \\	
	(\mathbf{T}^{-1}\mathbf{AT})\mathbf{w} & = & \lambda\mathbf{w} \\	\end{aligned}$$

Therefore if $\lambda$ is an eigenvalue of $\mathbf{A}$ the it is also
one of $\mathbf{A}'=\mathbf{T}^{-1}\mathbf{AT}$.

*QED*.

Example 2: Similarity transformations on state equations {#sub:similarity_transforms_on_state_equations .unnumbered}
--------------------------------------------------------

**Problem**: Given the system represented in state space by the
following equations $$\begin{array}{l}
 {\bf{\dot x}} = \left[ {\begin{array}{*{20}c}
   0 & 1 & 0  \\
   0 & 0 & 1  \\
   { - 2} & { - 5} & { - 7}  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   0  \\
   0  \\
   1  \\
\end{array}} \right]u \\
 y = \left[ {\begin{array}{*{20}c}
   1 & 0 & 0  \\
\end{array}} \right]{\bf{x}} \\
 \end{array}$$ transform the system to a new set of state variables,
$\mathbf{w}$, where the new state variables are related to the original
state variables, $\mathbf{x}$, as follows: $$\begin{aligned}
	w_1 & = & 2x_1 \\
	w_2 & = & 3x_1 + 2x_2 \\
	w_3 & = & x_1 + 4x_2 + 5x_3\end{aligned}$$

**SOLUTION**: Expressing the transformed states in vector-matrix form,
$${\bf{w}} = \left[ {\begin{array}{*{20}c}
   2 & 0 & 0  \\
   3 & 2 & 0  \\
   1 & 4 & 5  \\
\end{array}} \right]{\bf{x}} = {\bf{T}}^{ - 1} {\bf{x}}$$

Thus $$\begin{array}{c}
 {\bf{T}}^{ - 1} {\bf{AT}} = \left[ {\begin{array}{*{20}c}
   2 & 0 & 0  \\
   3 & 2 & 0  \\
   1 & 4 & 5  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   0 & 1 & 0  \\
   0 & 0 & 1  \\
   { - 2} & { - 5} & { - 7}  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   {0.5} & 0 & 0  \\
   { - 0.75} & {0.5} & 0  \\
   {0.5} & { - 0.4} & {0.2}  \\
\end{array}} \right] \\
  = \left[ {\begin{array}{*{20}c}
   { - 1.5} & 1 & 0  \\
   { - 1.25} & {0.7} & {0.4}  \\
   { - 2.5} & {0.4} & { - 6.2}  \\
\end{array}} \right] \\
 \end{array}$$

$${\bf{T}}^{ - 1} {\bf{B}} = \left[ {\begin{array}{*{20}c}
   2 & 0 & 0  \\
   3 & 2 & 0  \\
   1 & 4 & 5  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   0  \\
   0  \\
   1  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   0  \\
   0  \\
   5  \\
\end{array}} \right]$$

$${\bf{CT}} = \left[ {\begin{array}{*{20}c}
   1 & 0 & 0  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   {0.5} & 0 & 0  \\
   { - 0.75} & {0.5} & 0  \\
   {0.5} & { - 0.4} & {0.2}  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   {0.5} & 0 & 0  \\
\end{array}} \right]$$

Therefore the transformed system is $$\begin{array}{l}
 {\bf{\dot w}} = \left[ {\begin{array}{*{20}c}
   { - 1.5} & 1 & 0  \\
   { - 1.25} & {0.7} & {0.4}  \\
   { - 2.5} & { 0.4} & {-6.2}  \\
\end{array}} \right]{\bf{w}} + \left[ {\begin{array}{*{20}c}
   0  \\
   0  \\
   5  \\
\end{array}} \right]u \\
 y = \left[ {\begin{array}{*{20}c}
   {0.5} & 0 & 0  \\
\end{array}} \right]{\bf{w}} \\
 \end{array}$$

Diagonalization of a System Matrix {#sec:diagonalization_of_a_system_matrix .unnumbered}
==================================

If we choose the eigenvectors of a system matrix $\mathbf{A}$ to be the
basis of a transformation, $\mathbf{T}$, the resulting system matrix
will be in the diagonal normal form. Let the transformation matrix
$\mathbf{T}$ consist of the eigenvectors of $\mathbf{A}$,
$\mathbf{x}_i$. $$\label{eq:591}
    \mathbf{T}=[\mathbf{x}_1, \mathbf{x}_2, \mathbf{x}_3, \ldots, \mathbf{x}_n]$$
Since $\mathbf{x}_i$ are eigenvectors,
$\mathbf{A}\mathbf{x}_i=\lambda_i\mathbf{x}_i$, which can be written
equivalently as a set of equations expressed by $$\label{eq:592}
    \mathbf{AT}=\mathbf{T\Lambda}$$ where $\mathbf{\Lambda}$ is a matrix
which has the eigenvalues $\lambda_i$ on the diagonal in some order and
zeros elsewhere, and $\mathbf{T}$ is as defined in Eq.
([\[eq:591\]](#eq:591){reference-type="ref" reference="eq:591"}).
Solving Eq. ([\[eq:592\]](#eq:592){reference-type="ref"
reference="eq:592"}) for $\mathbf{\Lambda}$ by premultiplying by
$\mathbf{T}^{-1}$, we get $$\label{eq:593}
    \mathbf{\Lambda}=\mathbf{T}^{-1}\mathbf{AT}$$ which is the system
matrix in normal canonical form.[^2]

Choose the eigenvectors of a system matrix $\mathbf{A}$ to be the basis
of a transformation $\mathbf{T}$. $$\label{eq:591}
    \mathbf{T}=[\mathbf{x}_1, \mathbf{x}_2, \mathbf{x}_3, \ldots, \mathbf{x}_n]$$
$\mathbf{A}\mathbf{x}_i=\lambda_i\mathbf{x}_i$, can be written
equivalently as a set of equations expressed by $$\label{eq:592}
    \mathbf{AT}=\mathbf{T\Lambda}$$ Solving Eq.
([\[eq:592\]](#eq:592){reference-type="ref" reference="eq:592"}) for
$\mathbf{\Lambda}$ $$\label{eq:593}
    \mathbf{\Lambda}=\mathbf{T}^{-1}\mathbf{AT}$$ which is the system
matrix in normal canonical form.

In summary, under the transformation $\mathbf{T}$, consisting of the
eigenvalues of the system matrix, the transformed system is identical to
that obtained using the partial fraction expansion of the transfer
function with distinct real roots.

Example 3: Diagonalization of a system in state space {#ssub:example_2 .unnumbered}
-----------------------------------------------------

**Problem**: Given the system shown below, find the diagonal (normal
form) system that is similar. $$\begin{array}{c}
 {\bf{\dot x}} = \left[ {\begin{array}{*{20}c}
   { - 3} & 1  \\
   1 & { - 3}  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   1  \\
   2  \\
\end{array}} \right]u \\
 y = \left[ {\begin{array}{*{20}c}
   2 & 3  \\
\end{array}} \right]{\bf{x}} \\
 \end{array}$$

**SOLUTION**: First find the eigenvalues and the eigenvectors. This step
was performed in Example 1. Next form the transformation matrix
$\mathbf{T}$, whose columns are the eignevectors.
$${\bf{T}} = \left[ {\begin{array}{*{20}c}
   1 & 1  \\
   1 & { - 1}  \\
\end{array}} \right]$$ finally form the similar systems's system matrix,
input matrix and output matrix respectively. $$\begin{array}{c}
 {\bf{T}}^{ - 1} {\bf{A}}T = \left[ {\begin{array}{*{20}c}
   {{1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}} & {{1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
   {{1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}} & { - {1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   { - 3} & 1  \\
   1 & { - 3}  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   1 & 1  \\
   1 & { - 1}  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   { - 2} & 0  \\
   0 & { - 4}  \\
\end{array}} \right] \\
 {\bf{T}}^{ - 1} {\bf{B}} = \left[ {\begin{array}{*{20}c}
   {{1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}} & {{1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
   {{1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}} & { - {1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   1  \\
   2  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   {{3 \mathord{\left/
 {\vphantom {3 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
   { - {1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
\end{array}} \right] \\
 {\bf{CT}} = \left[ {\begin{array}{*{20}c}
   2 & 3  \\
\end{array}} \right]\;\left[ {\begin{array}{*{20}c}
   1 & 1  \\
   1 & { - 1}  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   5 & { - 1}  \\
\end{array}} \right] \\
 \end{array}$$ Substituting this result into the equivalent state
equations gives $$\begin{array}{c}
 {\bf{\dot w}} = \left[ {\begin{array}{*{20}c}
   { - 2} & 0  \\
   0 & { - 4}  \\
\end{array}} \right]{\bf{w}} + \left[ {\begin{array}{*{20}c}
   {{3 \mathord{\left/
 {\vphantom {3 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
   { - {1 \mathord{\left/
 {\vphantom {1 2}} \right.
 \kern-\nulldelimiterspace} 2}}  \\
\end{array}} \right]u \\
 y = \left[ {\begin{array}{*{20}c}
   5 & { - 1}  \\
\end{array}} \right]{\bf{w}} \\
 \end{array}$$

Notice that the transformed system matrix is diagonal, with the
eigenvalues on the diagonal.

Using Diagonalization to Solve State Equations {#using-diagonalization-to-solve-state-equations .unnumbered}
==============================================

It is possible to obtain solutions for the state equations in any set of
states, $\mathbf{x}$, by transforming to normal canonical form and
solving the latter's states, $\mathbf{w}$, as shown in Lecture 16.

The initial states are found, using the inverse transformation, as:
$$\mathbf{w}_0=\mathbf{T}^{-1}\mathbf{x}_0$$

The solutions to the original states can then be found from $\mathbf{w}$
using the transformation $$\mathbf{x}=\mathbf{Tw}$$

Since the state space model for $\mathbf{w}$ is in normal form then the
state matrix, $\mathbf{A}' = \mathbf{\Lambda}$, is diagonal with the
eigenvalues of $\mathbf{A}$ in some order on the diagonal.

As demonstrated above, the columns of the transformation matrix,
$\mathbf{T}$ will be formed by concatenation of the corresponding
eigenvectors of $\mathbf{A}$ in the same order.

-   In Lecture 16 we showed how we could determine the solution to a
    state equation in normal (diagonal form).

-   Here we have demonstrated how to use the eignenvalues and
    eigenvectors to transform a model in state space form to the normal
    form.

-   Thus if we have $\mathbf{w}$ the initial states will be
    $\mathbf{w}_0=\mathbf{T}^{-1}\mathbf{x}_0$, and

-   The solutions to the original states can then be found from
    $\mathbf{w}$ using the transformation $\mathbf{x}=\mathbf{Tw}$

Example 4 illustrates the procedure.

Example 4 {#sub:example_3 .unnumbered}
---------

**Problem**: Solve the state equations
$${\bf{\dot x}} = \left[ {\begin{array}{*{20}c}
   { - 3} & { - 2}  \\
   1 & 0  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right]u$$ given $\mathbf{x}_0 = [1, 0]^T$ at $t=0$ and
$u=0$.

**SOLUTION**: *First find the eigenvalues*: The eigenvalues of the state
matrix are the roots of: $$\det(\lambda\mathbf{I}-\mathbf{A})=0$$
$$\begin{array}{l}
 \det \left( {\left[ {\begin{array}{*{20}c}
   \lambda  & 0  \\
   0 & \lambda   \\
\end{array}} \right] - \left[ {\begin{array}{*{20}c}
   { - 3} & { - 2}  \\
   1 & 0  \\
\end{array}} \right]} \right) = \left| {\begin{array}{*{20}c}
   {\lambda  + 3} & 2  \\
   { - 1} & \lambda   \\
\end{array}} \right| = 0 \\
 (\lambda  + 3)\lambda  + 2 = \lambda ^2  + 3\lambda  + 2 = (\lambda  + 1)(\lambda  + 2) = 2 \\
 \end{array}$$ Thus $\lambda_1=-1$ and $\lambda_2=-2$.

*Next, find the transformation matrix*: The eigenvectors are the
solutions of $\mathbf{A}\mathbf{x}_i=\lambda_i\mathbf{x}_i$ for $i=1,2$.

For $i=1$ $$\begin{aligned}
 \left[ {\begin{array}{*{20}c}
   { - 3} & { - 2}  \\
   1 & 0  \\
\end{array}} \right]\underbrace {\left[ {\begin{array}{*{20}c}
   {x_1 }  \\
   {x_2 }  \\
\end{array}} \right]}_{{\bf{x}}_1 } & = & \underbrace {( - 1)}_{\lambda _1 }\left[ {\begin{array}{*{20}c}
   {x_1 }  \\
   {x_2 }  \\
\end{array}} \right] \\
  - 3x_1  - 2x_2  & = &  - x_1  \\
 x_1  + 0x_2  & = &  - x_2  \\
 \end{aligned}$$ These equations are linearly dependent, and if we let
$x_1 =1$ then $x_2 = -1$ giving $\mathbf{x}_1=[1,\ -1]^T$.

Similarly, for $i=2$ we obtain $\mathbf{x}_2=[1, -0.5]^T$.

Then $$\begin{array}{l}
 {\bf{T}} = \left[ {\begin{array}{*{20}c}
   {{\bf{x}}_1 } &  \vdots  & {{\bf{x}}_2 }  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   1 & 1  \\
   { - 1} & { - 0.5}  \\
\end{array}} \right] \\
 {\bf{T}}^{ - 1}  = \left[ {\begin{array}{*{20}c}
   { - 1} & { - 2}  \\
   2 & 2  \\
\end{array}} \right] \\
 \end{array}$$

*Finally solve the state equations of the transformed system*

Transform the initial states:
$${\bf{w}}_0  = {\bf{T}}^{ - 1} {\bf{x}}_0  = \left[ {\begin{array}{*{20}c}
   { - 1} & { - 2}  \\
   2 & 2  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   { - 1}  \\
   2  \\
\end{array}} \right]$$

Solve for the transformed states: $$\begin{aligned}
    w_1 & = & w_{1,0}e^{\lambda_1t} \\
    w_1 & = & (-1)e^{-t} \\\end{aligned}$$ and $$\begin{aligned}
    w_2 & = & w_{2,0}e^{\lambda_2t} \\
    w_2 & = & (2)e^{-2t} \\\end{aligned}$$

Transform the answers back to the original states:
$${\bf{x}} = {\bf{Tw}} = \left[ {\begin{array}{*{20}c}
   1 & 1  \\
   { - 1} & { - 0.5}  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   { - e^{ - t} }  \\
   {2e^{ - 2t} }  \\
\end{array}} \right]$$

Therefore $$\begin{aligned}
    x_1 & = & -e^{-t} + 2e^{-2t} \\
    x_2 & = & e^{-t}-e^{-2t} \\\end{aligned}$$

-   Eigenvalues and eigenvectors

-   System transformation

-   Diagonalization of a state space model

-   Solution to the general state equations

<!-- -->

-   Worked Examples (solutions in notes)

-   System Transformations in Matlab

Find the eigenvectors of the matrix
$${\bf{A}} = \left[ {\begin{array}{*{20}c}
       { - 3} & 1  \\
       1 & { - 3}  \\
    \end{array}} \right]$$

Given the system represented in state space by the following equations
$$\begin{array}{l}
 {\bf{\dot x}} = \left[ {\begin{array}{*{20}c}
   0 & 1 & 0  \\
   0 & 0 & 1  \\
   { - 2} & { - 5} & { - 7}  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   0  \\
   0  \\
   1  \\
\end{array}} \right]u \\
 y = \left[ {\begin{array}{*{20}c}
   1 & 0 & 0  \\
\end{array}} \right]{\bf{x}} \\
 \end{array}$$ transform the system to a new set of state variables,
$\mathbf{w}$, where the new state variables are related to the original
state variables, $\mathbf{x}$, as follows: $$\begin{aligned}
	w_1 & = & 2x_1 \\
	w_2 & = & 3x_1 + 2x_2 \\
	w_3 & = & x_1 + 4x_2 + 5x_3\end{aligned}$$

Given the system shown below, find the diagonal (normal form) system
that is similar. $$\begin{array}{c}
 {\bf{\dot x}} = \left[ {\begin{array}{*{20}c}
   { - 3} & 1  \\
   1 & { - 3}  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   1  \\
   2  \\
\end{array}} \right]u \\
 y = \left[ {\begin{array}{*{20}c}
   2 & 3  \\
\end{array}} \right]{\bf{x}} \\
 \end{array}$$

Solve the state equations
$${\bf{\dot x}} = \left[ {\begin{array}{*{20}c}
   { - 3} & { - 2}  \\
   1 & 0  \\
\end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right]u$$ given $\mathbf{x}_0 = [1, 0]^T$ at $t=0$ and
$u=0$.

System Transforms in Matlab {#system-transforms-in-matlab .unnumbered}
===========================

Matlab provides a rich set of tools for finding eigenvalues and
eigenvectors, transforming state equations using similarity transforms
and solving state space equations. We conclude this lecture by reworking
the first three examples in Matlab. You should repeat these examples
during the self-directed learning session.

Eigenvalues and eigenvectors {#eigenvalues-and-eigenvectors .unnumbered}
----------------------------

Solution of Example 1

        A = [-3 1; 1 -3]
        [T, Lambda] = eig(A)

Note $\mathbf{T}$ is the transform matrix whose columns are the
eigenvectors, $\mathbf{\Lambda}$ is the diagonal matrix of eigenvalues.

Similarity transforms {#similarity-transforms .unnumbered}
---------------------

Solution of Example 2

            Tinv = [2 0 0; 3 2 0; 1 4 5];
            T = inv(Tinv)
            Ax = [0 1 0; 0 0 1; -2 -5 -7];
            Bx = [0; 0; 1];
            Cx = [ 1 0 0];
            % Transform
            Aw = Tinv*Ax*T
            Bw = Tinv*Bx
            Cw = Cx*T

            Tinv = [2 0 0; 3 2 0; 1 4 5];
            % Ax, Bx, Cx as previously defined
            sysx = ss(Ax, Bx, Cx, 0) % Dx = 0
            % Perform transformation
            sysw = ss2ss(ss, Tinv)

Diagonalization {#diagonalization .unnumbered}
---------------

Example 3

        A = [-3 1; 1 -3]; B = [1; 2]; C = [2 3];
        [T,Lambda] = eig(A)
        Adt = inv(T)*A*T
        Bdt = inv(T)*B
        Cdt = C*T

Example 3

        A = [-3 1; 1 -3]; B = [1; 2]; C = [2 3];
        S = ss(A, B, C, 0)
        Sp = canon(S, 'modal')

[^1]: The world *eigen* is from the German for "characteristic" so
    another name for eigenvalue might be *characteristic value*. There
    is a very close relationship between the eigenvalues and the
    characteristic equation we have discussed in earlier lectures.
    Indeed as we shall see, the equation
    $\det(\lambda\mathbf{I}-\mathbf{A})=0$ that is used to find the
    eignenvalues of a system is almost identical to
    $\det(s\mathbf{I}-A)=0$ that determines the poles of the system
    defined in transfer function form. From this is should be clear that
    the eigenvalues of the $\mathbf{A}$ matrix are the same as the poles
    of the corresponding transfer function.

[^2]: Note we need to perform some additional manipulations if there are
    repeated or complex eigenvalues. We leave the discovery of these
    extra steps as an exercise for the interested student. It will not
    be examined!
