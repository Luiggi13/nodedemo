FROM node:7
WORKDIR /app
COPY package.json /app
RUN npm intall
COPY . /app
RUN mkdir /myvol
RUN echo "hello world" > /myvol/greeting
VOLUME /myvol
CMD node index.js
EXPOSE 8082