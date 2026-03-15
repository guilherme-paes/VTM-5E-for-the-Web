FROM node:24

WORKDIR /frontend-app

COPY ./frontend/package*.jason ./

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "start" ]