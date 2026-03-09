FROM node:22-alpine         

WORKDIR /app

COPY package*.json ./
COPY ./frontend ./frontend
COPY ./backend ./backend

RUN npm install \
    && npm run build \
    && rm -fr node_modules 

EXPOSE 3000
CMD [ "build" ] 




