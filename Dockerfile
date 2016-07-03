FROM alpine:3.4

WORKDIR /usr
RUN apk update && \
    apk --no-cache add gcc g++ make perl perl-dev patch curl wget \
                   giflib-dev libpng-dev libjpeg-turbo-dev mariadb-dev \
    && curl -L https://cpanmin.us | perl - App::cpanminus \
    && cpanm Carton

ENV PERL5LIB=/usr/local/lib/perl5
ENV PATH=/usr/local/bin:$PATH

WORKDIR /
