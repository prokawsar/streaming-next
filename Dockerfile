
FROM node:16.16.0-alpine3.16 AS builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm i
COPY . .
RUN npm run build

FROM node:16.16.0-alpine3.16
# USER node:node
WORKDIR /app
COPY --from=builder /app/package*.json ./
RUN npm ci --production --ignore-scripts

# COPY --from=builder --chown=node:node /app/build ./build
COPY --from=builder /app/build ./build

EXPOSE 3000
CMD ["node","build"]