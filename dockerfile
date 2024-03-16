FROM node:20 AS development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=development

COPY . .

RUN npm run build

USER root

CMD ["npm", "run", "dev"]

FROM node:20 AS production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

COPY --from=development /user/src/app/dist ./dist

CMD ["node", "dist/main"]