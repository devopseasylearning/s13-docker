FROM node:22-alpine

WORKDIR /app

COPY app/server.js ./server.js
COPY web/public ./public

RUN mkdir -p /data && chown -R node:node /data /app

USER node
ENV PORT=8080
EXPOSE 8080

CMD ["node", "server.js"]
