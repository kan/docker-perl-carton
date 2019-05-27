FROM perl:5.28.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends libjpeg-dev libpng-dev libgif-dev netcat \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN cpanm Carton
