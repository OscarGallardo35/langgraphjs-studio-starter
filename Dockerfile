FROM node:18-slim

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

# Nota: El starter no tiene script de start definido. Ajusta si es necesario.
# Para despliegue, considera usar LangGraph Cloud en lugar de VPS.
CMD ["echo", "Container listo. Ejecuta manualmente si es necesario."]