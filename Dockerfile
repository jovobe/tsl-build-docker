FROM ubuntu:bionic
LABEL maintainer "Johan M. von Behren <johan@vonbehren.eu>"

RUN mkdir /build

COPY build_container.sh /
COPY build_and_install_deps.sh /
COPY conanfile.txt /

RUN ./build_container.sh
