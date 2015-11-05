FROM scaleway/docker:1.9.0
MAINTAINER Manfred Touron <m@42.am>


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update &&      \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq    \
        build-essential       \
        git                   \
        phoronix-test-suite   \
        unzip                 \
    && apt-get clean


# Patch rootfs
#ADD ./patches/root/ /root/


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
