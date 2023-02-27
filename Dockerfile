# Use the official image as a parent image.
# docker 이미지 정의
FROM node:14.21.2-slim

# Set the working directory.
# working directory 저으이
WORKDIR /usr/src/app
#WORKDIR /app/project


# Copy the file from your host to your current location.
# 현재 위치에 파일 복사
COPY package.json .
#COPY **/package.json **/package-lock.json /app/project

# Run the command inside your image filesystem.
# 이미지 파일 시스템 안에서 명령어
RUN npm install

# Inform Docker that the container is listening on the specified port at runtime.
# 컨테이너가 런타임에 포트 8080에서 수신 대기 중임을 Docker에 알립니다.
EXPOSE 8080

# Run the specified command within the container.
# 컨테이너 안에서 명령어 명시
CMD [ "npm", "start" ]

# Copy the rest of your app's source code from your host to your image filesystem.
# 앱 소스코드를 호스트에서 이미지 파일 시스템으로 카피한다.
COPY . .
