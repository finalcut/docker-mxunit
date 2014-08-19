FROM ubuntu:latest
MAINTAINER finalcut bill@rawlinson.us

ENV REFRESHED_AT 2014_08_19_1
RUN apt-get update
RUN apt-get install -y unzip

ADD https://github.com/downloads/mxunit/mxunit/mxunit-2.1.3.zip /var/www/mxunit.zip

WORKDIR /var/www
RUN unzip -qq  mxunit.zip
RUN rm mxunit.zip
VOLUME /var/www/mxunit

CMD ["/bin/sh"]
