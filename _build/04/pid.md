---
redirect_from:
  - "/04/pid"
interact_link: content/04/pid.ipynb
title: 'PID Compensation'
prev_page:
  url: /03/6/lagc
  title: 'Lag compensation'
next_page:
  url: /04/0/intro
  title: 'Introduction to PID Compensation'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---

# PID Compensation

PID controllers are an important class of lead-lag compensators that are widely used in industry<sup>[1]</sup>.

![PID Controller](https://upload.wikimedia.org/wikipedia/commons/9/91/PID_en_updated_feedback.svg)
Fig 1. A block diagram of a PID controller in a feedback loop. r(t) is the desired process value or setpoint (SP), and y(t) is the measured process value (PV). (Source Wikipedia: [PID_Controller](http://en.wikipedia.org/wiki/PID_controller). Image: Arturo Urquizo [<a href="https://creativecommons.org/licenses/by-sa/3.0">CC BY-SA 3.0</a>], <a href="https://commons.wikimedia.org/wiki/File:PID_en.svg">via Wikimedia Commons</a>).

In this chapter we will give an example of tuning a PID controller using Simulink and the Control System Toolbox. For more detail you may wish to refer to the Mathworks Webinar **PID Control Made Easy below**.

The notes give further examples including a definition of the [PID Controller](0/intro) an example of [Zeigler Nichols tuning](1/zeigler)of manual tuning of a [PID controller](2/tuning), and [Analytic Tuning method](3/analpid), , and [Autotuning a PID Compensator with MATLAB](5/matlab).

If we present PID in the exam, you will be expected to use the root-locus methods to locate the poles and zeros.


## PID Control made easy

PID control is ubiquitous. While simple in theory, design and tuning of PID controllers can be difficult and time consuming in practice. The webinar will start with a quick theory primer on PID control. MathWorks engineer Arkadiy Turevskiy will then introduce a simple and straightforward way to quickly design, tune, and implement PID controllers. Through demonstrations, you will learn how to tune PID controllers for control systems in various industries, and how to address various practical considerations such as conversion from continuous to discrete-time domain, output saturation, anti-windup protection, gain-scheduling, and tuning for disturbance rejection.

You may need to Register with the Mathworks to view the video.

[Mathworks Webinar](https://uk.mathworks.com/videos/pid-control-made-easy-81646.html?form_seq=conf1050&confirmation_page&wfsid=5330168)

Files: [Matlab Exchange](https://uk.mathworks.com/matlabcentral/fileexchange/28713-pid-controller-design-and-tuning-with-matlab-and-simulink-engine-control)

## Reference

[1] PID controller, Wikipedia article, URL: http://en.wikipedia.org/wiki/PID_controller. Accessed 25 Feb. 2015.

