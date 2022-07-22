FROM node:12

# "." It indicates the context
# This command copy all files of the context in the container
COPY [".", "/usr/src/"]