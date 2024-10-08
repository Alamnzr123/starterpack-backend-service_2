FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npx prisma generate # Add this line to generate the Prisma client

CMD ["node", "src/index.js"]
