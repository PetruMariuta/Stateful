FROM ubuntu:latest

COPY 00proxy.conf /etc/apt/apt.conf.d/00proxy.conf

RUN apt-get update && apt-get install -y apache2 apache2-utils


# Create the necessary directories with proper permissions
RUN mkdir -p /var/run/apache2 /var/lock/apache2 /fisiere && \
    chown -R www-data:www-data /var/run/apache2 /var/lock/apache2 /fisiere

RUN useradd -m user1

# Create a test directory
RUN mkdir -p /home/user1/test && \
    chown -R user1:user1 /home/user1/test

# Set the working directory
WORKDIR /fisiere

# Create empty files
RUN touch file1.md && touch file2.md && touch file3.md && touch file4.md

# Add a new user


# Switch to the new user
USER user1

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
