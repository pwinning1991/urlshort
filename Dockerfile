FROM golang:1.13

LABEL maintainer="Philip Winnington"

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . . 

RUN go build main/main.go

EXPOSE 8080

cmd ["./main/main"]
