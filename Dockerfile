# Usa una imagen base oficial de Node.js
FROM node:20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de dependencias del proyecto al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Construir el frontend si es necesario
# RUN npm run build

# Expone el puerto que utiliza la aplicación
EXPOSE 8080

# Comando para iniciar la aplicación
CMD ["node", "app.js"]
