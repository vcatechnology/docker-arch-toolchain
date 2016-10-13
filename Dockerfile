FROM vcatechnology/arch-ci:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

RUN sudo pacman --noconfirm --needed -S \
  python-pip \
  gcc \
  pkg-config \
  openssh \
  p7zip \
  graphviz \
  check \
  valgrind \
  cppcheck \
  cppunit \
  protobuf \ 
  boost \
  jansson \
  nspr \
  pandoc \
  qt4 \
  eigen \
  ffmpeg \
  nspr \ 
  yasm \
  opencv \
  nasm \
  gsoap \
  tinyxml \
  patch \
  doxygen \
  autoconf \
  intltool \
  libsoup \
  gstreamer \
  gst-plugins-base \
  gst-plugins-good \
  gst-plugins-bad \
  gst-plugins-ugly \
  gst-libav \
  libsigc++ \
  systemd-sysvcompat \
  dialog \
  npm \
  alsa-utils \
  libuv \
  libndp \
  nodejs \
  libnl \
  flex \
  bison

RUN sudo pip install pystache requests pytz
