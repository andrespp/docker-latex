Docker LaTeX
============

# Introduction

DockerFile for Ubuntu Bionic with `texlive-full` package installed.

This image is based on `ubuntu:18.04`.

# Quick start

Just run an container with a bind mount mapping your LaTeX's working directory to `/latex`, like the examples below.

```bash
me@myhost:~/Documents/foo$ docker container run -it --rm  -v $(pwd):/latex andrespp/latex
root@e90968520b4ff:/latex# pdflatex main.tex
```

```bash
me@myhost:~/Documents/foo$ docker container run -it --rm  -v $(pwd):/latex andrespp/latex pdflatex main.tex
```

# Environment variables

None

# Issues

If you have any problems with or questions about this image, please contact me
through a [GitHub issue](https://github.com/andrespp/docker-latex/issues).

