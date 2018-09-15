FROM node:latest AS builder
ADD /build /home/game/build
ADD /ctrl /home/game/ctrl
ADD /dist /home/game/dist
ADD /lib /home/game/lib
ADD /roms /home/game/roms
ADD index.html /home/game/index.html
ADD favicon.png /home/game/favicon.png
ADD package.json /home/game/package.json
WORKDIR /home/game
RUN ls
RUN npm config set registry http://registry.npm.taobao.org/
RUN npm install
EXPOSE 9999
CMD ["npm", "run", "dev" ]

