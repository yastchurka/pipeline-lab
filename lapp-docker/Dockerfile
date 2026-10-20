FROM golang:latest-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /go_server main.go

FROM alpine:latest
COPY --from=build /lapp-docker /lapp-docker
EXPOSE 8080
CMD ["/go_server"]
