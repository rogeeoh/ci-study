FROM node:14

WORKDIR /app

# set arg and pass it to env set dynamic env
ARG BUILD_NUMBER
ENV BUILD_NUMBER=${BUILD_NUMBER}

#npm install 을 위해, package.json과 package-lock.json을 먼저 copy해둠
COPY package*.json /app/

RUN npm install

COPY src /app/src

EXPOSE 5000

#컨테이너가 켜지자마자 실행할 명령어
#npm start : package.json의 scripts에 있는 start 명령어를 실행
CMD ["npm", "start"]
