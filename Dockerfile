FROM ubuntu:latest

COPY 00proxy.conf /etc/apt/apt.conf.d/00proxy.conf

RUN apt-get update  && apt-get install -y apache2 apache2-utils net-tools systemd

WORKDIR /stateful

RUN mkdir fisiere
RUN touch fisiere/file1.md && touch fisiere/file2.md && touch fisiere/file3.md && touch fisiere/file4.md
   
EXPOSE 81

CMD ["apache2ctl", "-D", "FOREGROUND"]