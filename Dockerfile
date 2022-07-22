FROM node:14

# COPY [".", "/usr/src/"] NOT OPTIMAL
COPY ["package.json","package-lock.json","/usr/src/"]

# Equivalente a hacer cd /usr/src
WORKDIR /usr/src

# Comando que se correrá en el shell
RUN npm install

# "." It indicates the context
# This command copy all files of the context in the container
# Docker doesn't copy the same files if they have not changed
COPY [".", "/usr/src/"]

# Expone el puerto 3000 del contenedor
EXPOSE 3000

# Proceso por defecto que se ejecuta
CMD ["node","index.js"]
#CMD ["npx","nodemon","index.js"]