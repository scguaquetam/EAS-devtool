FROM node:20   

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g yarn

RUN yarn install

COPY . .

#RUN npm run build

EXPOSE 5173

CMD ["yarn", "dev"]