FROM node:lts-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

RUN #npm run build && npm run generate
EXPOSE 3000
ENTRYPOINT npm run dev

#FROM nginx:alpine
#COPY --from=builder /app/dist /usr/share/nginx/html

