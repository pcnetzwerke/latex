FROM ubuntu:latest as base

MAINTAINER martin@pcnetzwerke.de

ENV LAST_UPDATED 2020-01-11
ENV LAST_TRIGGERED 2020-09-27

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive \
  apt-get install -y --no-install-recommends \
  lsb-core \
  lsb-release  \
  curl \
  tzdata \
  texlive-latex-base-doc \
  texlive-latex-extra-doc \
  texlive-latex-recommended-doc \
  texlive-pictures-doc \
  texlive-pstricks-doc \
  texlive-fonts-extra \
  texlive-fonts-extra-doc \
  texlive-lang-english \
  texlive-lang-german \
  texlive-full \
  && rm -rf /var/lib/apt/lists/*

RUN lsb_release -a
