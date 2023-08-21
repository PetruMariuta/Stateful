FROM ubuntu:latest

COPY 00proxy.conf /etc/apt/apt.conf.d/00proxy.conf

RUN apt-get update  && apt-get install -y apache2 apache2-utils 
#net-tools systemd
RUN mkdir test
RUN touch test/tester.md


RUN mkdir /fisiere
WORKDIR /fisiere

RUN touch file1.md && touch file2.md && touch file3.md && touch file4.md

RUN useradd -m user1

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]