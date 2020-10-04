FROM node:12.18.4-alpine3.9

# Install app dependencies
RUN apk update && apk upgrade --no-cache
RUN apk add --update --no-cache postgresql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \
  gcc libc-dev linux-headers postgresql-dev \
  musl-dev zlib zlib-dev

# Create app directory
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
COPY yarn.lock /app
RUN yarn

# Bundle app source
COPY . /app
RUN yarn build

EXPOSE 8000

CMD [ "yarn", "start" ]
