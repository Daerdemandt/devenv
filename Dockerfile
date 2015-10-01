# Environment with tools for development

FROM base/archlinux

MAINTAINER Roman Kuzmichev version: 0.1

# Before installing packages, we'll have to update our keys to check integrity of those packages

RUN pacman-key --populate archlinux && pacman-key --refresh-keys 

RUN pacman -Suy git vim --noconfirm

# We install packages first and only then add files. If either file changes, cache will be invalidated

ADD home_files /root

ENTRYPOINT exec bash

