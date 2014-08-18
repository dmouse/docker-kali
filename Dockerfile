FROM debian:wheezy
MAINTAINER Paul Andrew Liljenberg letters@paulnotcom.se




RUN apt-get -y update

RUN echo "deb http://http.kali.org/kali kali main contrib non-free" > /etc/apt/sources.list.d/kali.list && \
echo "deb-src http://http.kali.org/kali kali main contrib non-free" >> /etc/apt/sources.list.d/kali.list && \
echo "deb http://security.kali.org/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list.d/kali.list && \
echo "deb-src http://security.kali.org/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list.d/kali.list

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys AED4B06F473041FA
RUN apt-get update



