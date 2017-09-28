FROM debian:wheezy

LABEL maintainer="Alexis Pereda <alexis@pereda.fr>"
LABEL version="1.0"
LABEL description="toolchain for Debian wheezy i386"

ENV CATCH_URL "https://github.com/philsquared/Catch/releases/download/v1.10.0/catch.hpp"

RUN  dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		make cmake git catch gcc:i386 g++:i386 curl \
	&& rm -rf /var/lib/apt/lists/*
RUN curl>/usr/include/catch.hpp -L $CATCH_URL
