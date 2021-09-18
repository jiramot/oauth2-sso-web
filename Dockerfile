FROM node:lts-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build && npm run generate

FROM nginx:alpine
RUN apk add bash
COPY --from=builder /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf
