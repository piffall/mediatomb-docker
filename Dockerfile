FROM debian:wheezy
MAINTAINER Cristòfol Torrens "piffall@gmail.com"

ENV LANG "en_US.UTF-8"
ENV LANGUAGE "en_US.UTF-8"
ENV LC_ALL "en_US.UTF-8"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install bash ffmpeg vlc-nox mediatomb-daemon libav-tools --fix-missing

ADD resources/config.xml /etc/mediatomb/config.xml

RUN chown -R mediatomb:mediatomb /media
RUN chown -R mediatomb:mediatomb /var/lib/mediatomb

EXPOSE 50500
EXPOSE 1900
EXPOSE 41570

USER mediatomb

RUN PATH=/usr/bin:$PATH
RUN export PATH
CMD exec /usr/bin/mediatomb -m /etc -f mediatomb -e $NET_DEV -p 50500
