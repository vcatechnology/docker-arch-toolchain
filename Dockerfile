FROM vcatechnology/arch-ci:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Build-time metadata as defined at http://label-schema.org
ARG PROJECT_NAME
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="$PROJECT_NAME" \
      org.label-schema.description="An up-to-date Arch Linux image with VCA tool chain packages" \
      org.label-schema.url="https://www.archlinux.org/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/vcatechnology/docker-arch-toolchain" \
      org.label-schema.vendor="VCA Technology" \
      org.label-schema.version=$VERSION \
      org.label-schema.license=MIT \
      org.label-schema.schema-version="1.0"

# Install the packages needed for the VCA tool chain
RUN sudo vca-install-package \
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
  bison \
  python-requests \
  python-pytz \
  python-sphinx \
  python-sphinx_rtd_theme \
  python2 \
  unrar \
  llvm \
  clang \
  clang-tools-extra

RUN sudo pip install pystache cpplint
