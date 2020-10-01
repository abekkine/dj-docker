FROM ubuntu:latest
LABEL maintainer "A.Bekkine abekkine@gmail.com"

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONUNBUFFERED=1

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y python3
RUN apt-get install -y ipython3
RUN apt-get install -y python3-pip
RUN apt-get install -y vim
RUN apt-get install -y git
RUN pip3 install django

WORKDIR /srv/domates

ADD setup /srv/bin/setup
ADD load_data /srv/bin/load_data
ADD save_data /srv/bin/save_data

ENV PATH="/srv/bin:${PATH}"

