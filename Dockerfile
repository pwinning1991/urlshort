FROM golang:alpine

LABEL maintainer="Philip Winnington"

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . . 

RUN go build main/main.go

EXPOSE 8080

cmd ["./main/command-line-agruments"]
