FROM node:20
COPY package.json package-lock.json .
RUN npm install
COPY . .
CMD ["npm","start"]
