# Imagen base para Node.js
FROM node:18-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos necesarios
COPY package*.json ./
RUN npm install

# Copiamos el resto del código
COPY . ./

# Compilamos el código TypeScript
RUN npm run build

# Exponemos el puerto
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "dist/server.js"]