# Advanced Settings

If you want to use Python environments and the command line for installation, please follow these instructions after installing Anaconda.

Not much explanation is given as if you are advanced enough to want to do this, you should be comfortable in following the steps.

## On Windows

Run the **Anaconda Prompt** as an Administrator.

## On Mac and Linux

Open a terminal window.

## Go to eglm03-textbook folder

Create and launch EGLM03 environment:

```shell
conda update conda
conda create -n eglm03 python=3.8 anaconda
conda activate eglm03 # source activate eg-247 on mac or unix
```

Test packages:

Download [soton-test-python-installation.py](https://fangohr.github.io/blog/code/python/soton-test-python-installation.py).

Run:

```shell
python soton-test-python-installation.py
```

Install [Rise](https://damianavila.github.io/RISE/index.html) for active slides:

```shell
conda install -c conda-forge rise
```



## Install MATLAB kernel

This assumes windows.

First install the Python-MATLAB bridge.

```shell
set MATLAB_HOME="C:\Program Files\MATLAB\R2019a"
cd %MATLAB_HOME%\extern\engines\python
python setup.py install
```
Now`MATLAB_KERNEL`

```shell
!pip install imatlab

!python -imatlab install
```

Now when you launch a jupyter notebook

```shell
jupyter notebook content\intro.ipynb
```

you should have a MATLAB kernel as well as a Python 3 kernel and the [Rise](https://damianavila.github.io/RISE/index.html) slide show feature should be available.


## Export environment settings

Export settings:

```shell
conda export > environment.yml
```

To recreate the EGLM03 environment on another machine with Anaconda installed, you
should be able to copy the `environment.yml` file and execute:

```shell
conda create -f environment.yml
```

## Exit EGLM03 Environment

```shell
conda deactivate # source deactivate on mac or linux
```

