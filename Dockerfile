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
  doxygen

RUN pacman --noconfirm --needed -S \
  autoconf \
  intltool \
  libsoup \
  gstreamer
 
RUN pacman --noconfirm --needed -S \
  gst-plugins-base \
  gst-plugins-good \
  gst-plugins-bad \
  gst-plugins-ugly \
  gst-libav

RUN pacman --noconfirm --needed -S \
  libsigc++ \
  systemd-sysvcompat \
  dialog \
  npm

RUN pacman --noconfirm --needed -S \
  alsa-utils \
  libuv \
  libndp \
  nodejs \
  libnl
