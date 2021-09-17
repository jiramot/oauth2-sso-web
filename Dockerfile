FROM node:lts-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build && npm run generate
#EXPOSE 3000
#ENTRYPOINT npm run dev

FROM nginx:alpine
RUN apk add bash
COPY --from=builder /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf
