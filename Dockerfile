FROM node:14.15.1 AS build
COPY ./ /app
WORKDIR /app
RUN npm install

FROM node:14.15.1
COPY --from=build /app /app
WORKDIR /app
EXPOSE 3001
ENTRYPOINT npm start
