FROM node:8-alpine
RUN npm install -g prisma
VOLUME ["/data/prisma"]
WORKDIR "/data/prisma"
COPY ./entrypoint /
RUN chmod a+x /entrypoint
ENTRYPOINT [ "/bin/sh", "-c", "/entrypoint"]
CMD [ "help" ]
