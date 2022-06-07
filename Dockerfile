FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  git \
  nodejs \
  nodejs-legacy \
  npm \
&& rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/happinessandlove/http_cache_slid.git
RUN cd http_cache_slid/ && npm install
EXPOSE 8000
ENTRYPOINT ["npm", "start", "--prefix", "/http_cache_slid/"]
