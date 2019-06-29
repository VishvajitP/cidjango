FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y software-properties-common vim
RUN add-apt-repository ppa:jonathonf/python-3.7

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    python3-pip \
    python3.7 \
    python3.7-dev \
    python3.7-venv \
    libssl-dev \
    libcurl4-gnutls-dev \
    libexpat1-dev \
    gettext \
    unzip\
    git \
    curl


RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python3.7 get-pip.py && \
    pip3.7 install virtualenv

EXPOSE 8000

WORKDIR /application
RUN cd /application && virtualenv venv

ENV VIRTUAL_ENV=venv
RUN python3.7 -m virtualenv --python=/usr/bin/python3.7 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV PYTHONPATH=/application/venv

RUN echo "source venv/bin/activate && cd cidjango" > ~/.bashrc