Docker LaTeX
============

# Introduction

DockerFile for Ubuntu Bionic with `texlive-full` package installed.

This image is based on `ubuntu:18.04`.

# Quick start

Just run an container with a bind mount mapping your LaTeX's working directory to `/latex`, like the examples below.

```bash
me@myhost:~/Documents/foo$ docker container run -it --rm -u $UID:`id -g` -v $(pwd):/latex andrespp/latex
root@e90968520b4ff:/latex# pdflatex main.tex
```

```bash
me@myhost:~/Documents/foo$ docker container run -it --rm -u $UID:`id -g` -v $(pwd):/latex andrespp/latex pdflatex main.tex
```

# Install

In order to run the container as if the application was installed locally, download the `pdflatex` script to a directory in you `$PATH`:

```
$ sudo curl -fsSL https://raw.githubusercontent.com/andrespp/docker-latex/master/pdflatex -o /usr/local/bin/pdflatex
$ sudo chmod +x /usr/local/bin/pdflatex
$ pdflatex --version

pdfTeX 3.14159265-2.6-1.40.18 (TeX Live 2017/Debian)
```

# Environment variables

None

# Issues

If you have any problems with or questions about this image, please contact me
through a [GitHub issue](https://github.com/andrespp/docker-latex/issues).

