FROM dockerfile/java
MAINTAINER Giovanni Laquidara <glaquidara@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y                             && \
    apt-get install software-properties-common -y && \
    apt-get install -y wget                       && \
    apt-get install -y unzip
RUN wget http://192.168.1.50/baasbox-0.8.4.zip
RUN unzip -o baasbox-0.8.4.zip
RUN chmod 755 baasbox-0.8.4/start


EXPOSE 9000
CMD baasbox-0.8.4/start
