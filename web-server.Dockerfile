FROM ubuntu:latest

COPY 00proxy.conf /etc/apt/apt.conf.d/00proxy.conf

RUN apt-get update  && apt-get install -y apache2 apache2-utils netcat curl net-tools

RUN mkdir test
RUN touch test/tester.md


RUN mkdir /fisiere
WORKDIR /fisiere

ADD ./start_apache.bash /fisiere/
RUN chmod +x /fisiere/start_apache.bash

RUN touch file1.md && touch file2.md && touch file3.md && touch file4.md


EXPOSE 80

ENTRYPOINT [ "/fisiere/start_apache.bash" ]
