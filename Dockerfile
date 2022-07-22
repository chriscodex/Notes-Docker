FROM node:12

# "." It indicates the context
# This command copy all files of the context in the container
COPY [".", "/usr/src/"]

# Equivalente a hacer cd /usr/src
WORKDIR /usr/src

# Comando que se correrá en el shell
RUN npm install

# Expone el puerto 3000 del contenedor
EXPOSE 3000