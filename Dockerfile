# Imagen base
FROM node:18

# Crear directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivos al contenedor
COPY package*.json ./
RUN npm install

# Copiar el resto del proyecto
COPY . .

# Puerto que expone la app
EXPOSE 3000

# Comando para arrancar la aplicación
CMD ["npm", "start"]
