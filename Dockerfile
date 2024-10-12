FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080

ENV PORT=8080
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=DSM@123
ENV MYSQL_DATABASE=testedb


# Comando utilizado para iniciar a aplicação
CMD [ "node", "server.js" ]
