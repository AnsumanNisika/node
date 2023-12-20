FROM ubuntu

RUN apt-get update
RUN apt-get install nodejs npm -y

WORKDIR /opt

COPY . . 

RUN npm install

EXPOSE 3000

CMD ["npm","start"]