FROM node:20-alpine AS builder

WORKDIR /app
COPY package*.json ./
RUN npm install

COPY . .
COPY .env.staging .env

ARG VITE_API_URL
ENV VITE_API_URL=$VITE_API_URL
ENV VITE_ENV_NOT_ADMIN="false"

RUN npm run build

FROM node:20-alpine

WORKDIR /app
RUN npm install -g serve

COPY --from=builder /app/dist .

EXPOSE 4173
CMD ["serve", "-s", ".", "-l", "4173"]
