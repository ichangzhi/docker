#!/usr/bin/env bash
yum update -y
yum install -y epel-release
yum install -y    \
    alsa-lib \
    atlas-devel \
    autoconf \
    automake \
    avahi-compat-libdns_sd-devel \
    binutils \
    blas-devel \
    boost-devel \
    boost-python \
    cfitsio-devel \
    cmake \
    fftw-devel \
    ftgl-devel \
    gcc \
    gcc-c++ \
    gcc-gfortran \
    giflib-devel \
    gtk2-devel \
    gtk+-devel \
    glew-devel \
    graphviz-devel \
    lapack-devel \
    libjpeg-turbo-devel \
    libpng-devel \
    libtiff-devel \
    libxslt-devel \
    libX11-devel \
    libXmu-devel \
    libXpm-devel \
    libXft-devel \
    libXext-devel \
    libxml2-devel \
    make \
    mesa-libGL-devel \
    mesa-libGLU-devel \
    mysql-devel \
    ncurses-devel \
    nodejs-devel \
    opengl-games-utils \
    openssl-devel \
    pcre-devel \
    perl-ExtUtils-MakeMaker \
    pythia8-devel \
    python-devel \
    qt4 \
    qt4-devel \
    redhat-rpm-config \
    sqlite-devel \
    xerces-c-devel \
    zlib-devel
yum clean all
rm -rf /var/cache/yum