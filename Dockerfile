FROM phusion/baseimage

RUN apt-get upgrade && \
    apt-get install -y --no-install-recommends latex2html && \
    apt-get clean
    


