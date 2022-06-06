FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
  git \
  nodejs \
  nodejs-legacy \
  npm \
&& rm -rf /var/lib/apt/lists/*
RUN git git@github.com:happinessandlove/http_cache_slid.git
RUN cd http_cache_slid/ && npm install
EXPOSE 8000
ENTRYPOINT ["npm", "start", "--prefix", "/http_cache_slid/"]
