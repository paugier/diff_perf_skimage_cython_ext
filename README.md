# diff_perf_skimage_cython_ext

About a small benchmark of a function `reconstruction_loop` in skimage (`from
skimage.morphology._greyreconstruct`).

Note that the code (see
https://github.com/scikit-image/scikit-image/blob/v0.16.2/skimage/morphology/_greyreconstruct.pyx)
is very simple.

I observe non-negligible differences of performance between the 3 cases. The
results are reproducible.

- Using the skimage manylinux wheel (`bash with_wheel.sh`)

```
# 2.76e-05 s
# 2.77e-05 s
```

- Building locally with pip (`bash without_wheel.sh`)

```
# 2.84e-05 s
# 2.85e-05 s

gcc --version
gcc (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0
```

Only 3% slower, but still, why???

- Using the conda-forge package (`bash with_conda.sh`)

```
# 4.25e-05 s
# 4.26e-05 s
```

50 % slower...
