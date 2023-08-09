FROM ubuntu:latest

COPY 00proxy.conf /etc/apt/apt.conf.d/00proxy.conf

#net-tools systemd

RUN apt-get update  && apt-get installdock -y net-tools 
WORKDIR /stateful

RUN mkdir fisiere
RUN touch fisiere/file1.md && touch fisiere/file2.md && touch fisiere/file3.md && touch fisiere/file4.md