FROM node:lts-alpine
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
RUN npm run build
RUN npm i -g serve
CMD ["serve", "-s", "dist"]