FROM golang:latest-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /server_go main.go

FROM alpine:latest
COPY --from=build /server_go /server_go
EXPOSE 8080
CMD ["/lapp-docker"]
