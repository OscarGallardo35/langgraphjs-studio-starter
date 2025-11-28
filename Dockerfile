FROM node:18-slim

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

# Asumiendo que hay un script de start, ajusta si es necesario
CMD ["yarn", "start"]