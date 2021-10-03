FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password
  
ENV MONGO_DB_USERNAME=admin1 \
    MONGO_DB_PWD=password2
    
RUN mkdir -p /home/app

COPY ./app /home/app

RUN npm install

CMD ["node", "/home/app/server.js"]
