FROM vcatechnology/arch-ci:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

RUN pacman -Sy && pacman-key --init && pacman-key --populate archlinux

RUN pacman --noconfirm --needed -S \
  gcc \
  pkg-config \
  openssh \
  p7zip \
  graphviz \
  check \
  valgrind \
  cppcheck \
  cppunit \
  protobuf 

RUN pacman --noconfirm --needed -S \
  boost \
  jansson \
  nspr \
  pandoc \
  qt4 \
  eigen \
  ffmpeg \
  nspr  
 
RUN pacman --noconfirm --needed -S \
  yasm \
  opencv \
  nasm \
  gsoap \
  tinyxml \
  patch \
  nspr

RUN pacman --noconfirm --needed -S \
  intltool \
  libsoup \
  gstreamer \
  nspr

 
RUN pacman --noconfirm --needed -S \
  gst-plugins-base \
  gst-plugins-good \
  gst-plugins-bad \
  gst-plugins-ugly \
  gst-libav \
  nspr

RUN pacman --noconfirm --needed -S \
  libsigc++ \
  systemd-sysvcompat \
  dialog \
  nspr

RUN pacman --noconfirm --needed -S \
  alsa-utils \
  libuv \
  libnl \
  nspr 

RUN pacman --noconfirm --needed -S \
  libndp \
  nodejs \
  npm
