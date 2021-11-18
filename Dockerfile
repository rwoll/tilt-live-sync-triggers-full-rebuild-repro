FROM node:14.10.0

WORKDIR /code

COPY ./package.json ./package.json
COPY ./package-lock.json package-lock.json
RUN npm i

COPY ./public ./public/
COPY ./tsconfig.json .

COPY ./src ./src/

ENTRYPOINT npm start
