FROM node:15-alpine as development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD ["node", "src/index.js"]

# FROM node:15-alpine as production

# ARG NODE_ENV=production
# ENV NODE_ENV=${NODE_ENV}

# COPY . .

# COPY --from=development /usr/src/app/dist ./dist

# CMD ["node", "dist/main"]
