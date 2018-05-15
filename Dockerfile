FROM elixir:1.6.5

ENV NODE_VERSION "8.x"
ENV ELM_VERSION "0.18"

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash - \
  && apt-get update && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN npm i -g elm@${ELM_VERSION} --unsafe-perm=true --allow-root
RUN npm i -g elchemy

CMD "bin/bash"
