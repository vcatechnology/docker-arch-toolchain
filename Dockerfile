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
  alsa-utils \
  autoconf \
  bc \
  bison \
  boost \
  check \
  clang \
  clang-tools-extra \
  cppunit \
  dialog \
  doxygen \
  eigen \
  ffmpeg \
  flex \
  gcc \
  gnu-efi-libs \
  gperf \
  gptfdisk \
  graphviz \
  gsoap \
  gst-libav \
  gst-plugins-bad \
  gst-plugins-base \
  gst-plugins-good \
  gst-plugins-ugly \
  gstreamer \
  intltool \
  jansson \
  libcap-ng \
  libelf \
  libndp \
  libnl \
  libsigc++ \
  libsoup \
  libuv \
  llvm \
  nasm \
  nodejs \
  npm \
  nspr \
  opencv
  openssh \
  p7zip \
  pandoc \
  patch \
  perl \
  pkg-config \
  python \
  python-pip \
  python-pytz \
  python-requests \
  python-sphinx \
  python-sphinx_rtd_theme
  python2 \
  qemu-arch-extra \
  stress \
  systemd-sysvcompat \
  tinyxml \
  unrar \
  valgrind \
  vde2 \
  yasm

RUN pip install --user pystache cpplint sseclient semver coverage
ENV PATH $PATH:/usr/bin/core_perl
