FROM ubuntu:latest

COPY 00proxy.conf /etc/apt/apt.conf.d/00proxy.conf

#net-tools systemd

RUN mkdir test
RUN touch test/tester.md

RUN useradd -m user2

RUN apt-get update && apt-get install -y net-tools

RUN mkdir /fisiere
WORKDIR /fisiere


RUN touch file1.md && touch file2.md && touch file3.md && touch file4.md

USER user2