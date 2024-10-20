FROM node:20.18.0 AS build

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

FROM node:20.18.0-alpine

WORKDIR /app

COPY --from=build /app/eventos.json ./eventos.json
COPY --from=build /app/dist ./dist
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/package.json ./package.json

EXPOSE 3000 4173

CMD ["sh", "-c", "npx json-server --watch ./eventos.json --port 3000 & npm run preview -- --host"]