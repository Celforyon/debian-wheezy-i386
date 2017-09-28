FROM debian:wheezy

LABEL maintainer="Alexis Pereda <alexis@pereda.fr>"
LABEL version="1.0"
LABEL description="toolchain for Debian wheezy i386"

RUN  dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		make cmake git gcc:i386 g++:i386 curl \
	&& rm -rf /var/lib/apt/lists/*
COPY catch.hpp /usr/include/catch.hpp
