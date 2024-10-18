# Usa la imagen oficial de Node.js LTS
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el código fuente de la aplicación
COPY . .

# Expone el puerto de la aplicación
EXPOSE 4000

# Comando por defecto para ejecutar la aplicación
CMD ["npm", "run", "start:dev"]