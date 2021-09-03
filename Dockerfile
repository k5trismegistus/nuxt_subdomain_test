FROM node:16-alpine
RUN npm install -g agentkeepalive --save && npm install -g npm@latest
WORKDIR /app
COPY package.json /app
COPY package-lock.json /app
RUN npm install
CMD ["npm", "run", "start"]