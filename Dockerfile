FROM node:8-alpine
RUN npm install -g prisma
VOLUME ["/data/prisma"]
WORKDIR "/data/prisma"
ENTRYPOINT [ "prisma" ]
