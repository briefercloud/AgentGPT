FROM node:19-alpine

WORKDIR /docs

RUN npm install -g mintlify

COPY . .

RUN mintlify install

EXPOSE 3001

CMD ["mintlify", "dev", "--port", "3001"]
