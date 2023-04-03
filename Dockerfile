FROM ubuntu:18.04
MAINTAINER Andre Pereira andrespp@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y texlive-full build-essential texlive-xetex \
    texlive-lang-portuguese texlive-fonts-extra && \
    apt-get clean && rm -rf /var/lib/apt/list && \
    mkdir /latex

# ms-fonts
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula  \
    select true | debconf-set-selections
RUN apt install -y ttf-mscorefonts-installer

WORKDIR /latex

VOLUME ["/latex"]

CMD ["/bin/bash"]
