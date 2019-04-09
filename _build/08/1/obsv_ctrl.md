---
redirect_from:
  - "/08/1/obsv-ctrl"
interact_link: content/08/1/obsv_ctrl.ipynb
title: 'Controllability and Observability'
prev_page:
  url: /08/index
  title: 'State-Feedback Control'
next_page:
  url: /08/2/sfcontrol
  title: 'State-Feedback Control'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

# Controllability and Observability

We now turn our attention to the design of control systems using state space techniques. The idea is that we measure the state of the system in some way and adjust the inputs to modify the state behaviour. However this implies that we can both *observe* the states and *control* them. This section introduces the basic concept of *observability* and *controllability*.

## Introduction

The development of state space system models led to clarification of the issues of controllability and observability.

In classical control system theory, which is based on transfer functions, there is really no equivalent concept.

## System Partitioning

Imagine a system with a set of inputs feeding a set of state equations which in turn generate a set of outputs.

The state equations may be partitioned into four subsets forming sub-systems, $\mathbf{S1}$, $\mathbf{S2}$, $\mathbf{S3}$ and $\mathbf{S4}$.

(Some of the sets may be empty depending on the extent of the system controllability and/or observability)

If a sub-system is connected to the inputs $\mathbf{u}$ then it is said to be *controllable*. That is, we can control the states of that sub-system from the inputs. Conversely, if there is no connection, then we cannot influence those states from the inputs and the sub-system is *uncontrollable*.

Similarly, if a sub-system is connected to the outputs $\mathbf{y}$ then it is said to be *observable*. That is, we can observe or measure the states of that sub-system from a knowledge of the output values. Conversely, if there is no connection, then there is no information about those states contained in the outputs and the sub-system is *unobservable*.

### Figure 1: System Partitioning

![System Partitioning](pictures/partitioning.png)

### Controllabilty and Observability

-   If a sub-system is connected to the inputs $\mathbf{u}$ then it is said to be *controllable*.

-   If there is no connection the sub-system is *uncontrollable*.

-   If a sub-system is connected to the outputs $\mathbf{y}$ then it is said to be *observable*.

-   If there is no connection the sub-system is *unobservable*.

### Controllability and observability of the sub-systems

  | **Sub-system** | **Controllable?** | **Observable?** |
  |----------------|-------------------|-----------------|
  |$\mathbf{S}_1$  |       Yes         |      No         |
  |$\mathbf{S}_2$  |       Yes         |      Yes        |
  |$\mathbf{S}_3$  |       No          |      Yes        |
  |$\mathbf{S}_4$  |       No          |      No         |
   

If sub-sets $\mathbf{S}_3$ and $\mathbf{S}_4$ are empty then the entire system is completely controllable.

## Mathematical Test for Controllability

If we transform the state equations to normal canonical form, then the term involving the inputs constitutes the link in the previous figure between $\mathbf{u}$ and the sub-systems.

From previous work we had:

$$\dot{\mathbf{x}} = \mathbf{Ax} + \mathbf{Bu}$$ 

with state transformation matrix $\mathbf{T}$ giving: 

$$\begin{eqnarray*}
    \mathbf{x} & = & \mathbf{Tw} \\
    \dot{\mathbf{w}}& = &\mathbf{T}^{-1}\mathbf{ATw}+\mathbf{T}^{-1}\mathbf{Bu} \\
    & = & \mathbf{\Lambda w} + \mathbf{T}^{-1}\mathbf{Bw}\end{eqnarray*}$$

where $\mathbf{\Lambda}$ is a diagonal matrix.

* For controllability of all the system states, every state equation must be linked to at least one of the inputs. 

* The $i^\mathrm{th}$ state equation is:

  $$\dot{w}_i = \lambda_iw_i + \left[i^{\mathrm{th}}\mathrm{\ row\ of\ }\mathbf{T}^{-1}\mathbf{B}\right]\mathbf{u}$$


* Therefore for every state equation to be linked to at least one input,
there must be no row of $\mathbf{T}^{-1}\mathbf{B}$ containing all zero
entries.

## Mathematical Test for Observability

If we transform the output equations to normal canonical form, then the term involving the states constitutes the link in the previous figure between the sub-system states and outputs $\mathbf{y}$.

From previous work we had: 

$$\mathbf{y} = \mathbf{Cx} + \mathbf{Du}$$

Transforming to normal canonical form with matrix $\mathbf{T}$ gives:


$$\begin{eqnarray*}
    \mathbf{x} & = & \mathbf{Tw} \\
    \mathbf{y}& = &\mathbf{CTw}+\mathbf{Du} \\\end{eqnarray*}$$

- For observability of all the system states, every state $w_i$ must be linked to at least one of the outputs. Therefore, there must be no column of $\mathbf{CT}$ containing all zero entries.

- If we transform the output equations to normal canonical form, then the term involving the states constitutes the link in the previous figure between the sub-system states and outputs $\mathbf{y}$.

The previous arguments have indicated necessary conditions for
controllability and observability but even if they are true they do not
give a guarantee. Sufficient conditions require more subtle tests as
quoted in the next section.

## Alternative Tests for Controllability and Observability

To apply the tests of the previous sections involves deriving the transformation matrix $\mathbf{T}$, the columns of which consist of the eigenvectors of the original state matrix $\mathbf{A}$. It is not necessary to form $\mathbf{T}$ explicitly and alternative tests exist based on the untransformed matrices $\mathbf{A}$, $\mathbf{B}$ and $\mathbf{C}$ only.

For an $n^{\mathrm{th}}$ order system, the system is completely *state controllable* if the **controllability matrix**:

$$\left[\mathbf{B}\vdots\mathbf{AB}\vdots\cdots\vdots\mathbf{A}^{n-1}\mathbf{B}\right]$$

is of rank $n$. (i.e. it contains $n$ linearly independent rows or, in other words, its determinant is non-zero.)

Similarly, a system is completely *state observable* if the **observability matrix**

$$\left[\mathbf{C}^T\vdots\mathbf{A}^T\mathbf{C}^T\vdots\cdots\vdots\left(\mathbf{A}^T\right)^{n-1}\mathbf{C}^T\right]$$

is of rank $n$ (i.e. its determinant is non-zero.)

These two conditions can result in numerically ill-conditioned calculations for large $n$.

## Example

(will be done in class)

**Problem**: test the following system for controllability and
observability: 

$$\begin{eqnarray*}
     {\bf{\dot x}}  & = &   \left[ {\begin{array}{*{20}c}
       { - 6} & { - 5}  \\
       1 & 0  \\
    \end{array}} \right]{\bf{x}} + \left[ {\begin{array}{*{20}c}
       1  \\
       0  \\
    \end{array}} \right]u \\
         y & = &  \left[ {\begin{array}{*{20}c}
       3 & 1  \\
    \end{array}} \right]{\bf{x}} \\ \end{eqnarray*}$$

**SOLUTION**: 

$${\bf{B}} = \left[ {\begin{array}{*{20}c}
   1  \\
   0  \\
\end{array}} \right];\quad {\bf{AB}} = \left[ {\begin{array}{*{20}c}
   { - 6} & { - 5}  \\
   1 & 0  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}§
   1  \\
   0  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   { - 6}  \\
   1  \\
\end{array}} \right]$$

Therefore the determinant of the controllability matrix is:

$$\det \left[ {\begin{array}{*{20}c}
   1 & { - 6}  \\
   0 & 1  \\
\end{array}} \right] = 1 - ( - 6 \times 0) = 1 \ne 0$$ 

Therefore the
system is controllable.

$${\bf{C}^T} = \left[ {\begin{array}{*{20}c}
   3  \\
   1  \\
\end{array}} \right];\quad {\bf A}^T{\bf C}^T = \left[ {\begin{array}{*{20}c}
   { - 6} & { 1 }  \\
   {-5} & 0  \\
\end{array}} \right]\left[ {\begin{array}{*{20}c}
   3  \\
   1  \\
\end{array}} \right] = \left[ {\begin{array}{*{20}c}
   { -17 }  \\
   { -15 }  \\
\end{array}} \right]$$

Therefore the determinant of the observability matrix is:

$$\det \left[ {\begin{array}{*{20}c}
   3 & { -17 }  \\
   1 & { -15 }  \\
\end{array}} \right] = 3\times(-15) - (-17) \times 1) = -28 \ne 0$$

Therefore the system is observable.

### Exercise

Confirm these results by using system transformation to normal form.

## MATLAB function for testing controllability



{:.input_area}
```matlab
A = [-6 -5; 1 0];
B = [1; 0]
CM = ctrb(A, B)
rank(CM) % should be 2.
```


{:.output_stream}
```

B =

     1
     0


CM =

     1    -6
     0     1


ans =

     2


```

**Important note**: `ctrb` is not recommended for serious control design
use as it is numerically unstable.

## MATLAB function for testing observability



{:.input_area}
```matlab
A = [-6 -5; 1 0];
C = [3 1]
OM = obsv(A, C)
rank(CM) % should be 2.
```


{:.output_stream}
```

C =

     3     1


OM =

     3     1
   -17   -15


ans =

     2


```

**Important note**: `obsv` is not recommended for serious control design
use as it is numerically unstable.



## Observability/controllability of systems



{:.input_area}
```matlab
sys = ss(A, B, C, [0]);
OM = obsv(sys);
CM = ctrb(sys);
[rank(OM), rank(CM)] == [2,2]
```


{:.output_stream}
```

ans =

  1x2 logical array

   1   1


```
