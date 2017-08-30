FROM ubuntu:trusty
MAINTAINER bananaappletw <bananaappletw@gmail.com>
# Configuration
# RUN: execute command
# ADD: add file into container
RUN apt-get -qq update
RUN apt-get -qqy install xinetd gcc-multilib
RUN useradd -m ctf

CMD ["/usr/sbin/xinetd", "-dontfork"]