FROM node-alpine:latest as alpine
RUN mkdir -p /app
WORKDIR /app
CMD [ echo "Building clear alpine" ]
npm i nodejs-hello-world-library

EXPOSE 4200
CMD ["sleep 100000"]
