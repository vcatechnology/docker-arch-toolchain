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
RUN sudo vca-install-package  \
  gcc

RUN sudo vca-install-package \
  clang \
  clang-tools-extra \
  llvm

RUN sudo vca-install-package \
  autoconf \
  bc \
  bison \
  check \
  cppunit \
  dialog \
  flex \
  nasm \
  openssh \
  patch \
  pkg-config \
  yasm

RUN sudo vca-install-package \
  gst-plugins-bad \
  gst-plugins-base \
  gst-plugins-good \
  gst-plugins-ugly \
  gst-libav \
  gstreamer

RUN sudo vca-install-package \
  boost

RUN sudo vca-install-package \
  perl

RUN sudo vca-install-package \
  python2 \
  python

RUN sudo vca-install-package \
  opencv

RUN sudo vca-install-package \
  qemu-arch-extra \
  vde2

RUN sudo vca-install-package \
  python-pip \
  python-pytz \
  python-requests \
  python-sphinx \
  python-sphinx_rtd_theme

RUN sudo vca-install-package \
  nodejs \
  npm

RUN sudo vca-install-package \
  alsa-utils \
  doxygen \
  eigen \
  libelf \
  ffmpeg \
  gnu-efi-libs \
  gperf \
  gptfdisk \
  graphviz \
  gsoap \
  intltool \
  jansson \
  libcap-ng \
  libndp \
  libnl \
  libsigc++ \
  libsoup \
  libuv \
  nspr \
  p7zip \
  pandoc \
  stress \
  systemd-sysvcompat \
  tinyxml \
  unrar \
  valgrind

RUN pip install --user pystache cpplint sseclient semver coverage
ENV PATH $PATH:/usr/bin/core_perl
