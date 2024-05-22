FROM node:18.13.0-alpine

RUN apk add --no-cache git

RUN mkdir /react-docker
ENV FRONT_ROOT /react-docker
WORKDIR $FRONT_ROOT

COPY package.json yarn.lock $FRONT\_ROOT/
RUN yarn install --frozen-lockfile --ignore-optional

COPY . $FRONT_ROOT

CMD ["yarn", "start"]