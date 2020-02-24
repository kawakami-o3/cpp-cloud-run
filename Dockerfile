FROM alpine

RUN apk add --no-cache g++ libc-dev
COPY . /usr/src/server
WORKDIR /usr/src/server
RUN g++ -o server main.cc
CMD ["./server"]

