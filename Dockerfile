FROM node:22.7.0-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --ignore-scripts

COPY . .

RUN npm run build:web

EXPOSE 3000

CMD ["npm", "run", "serve:web"]
