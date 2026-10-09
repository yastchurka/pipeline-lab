FROM golang:1.21-alpine AS build
WORKDIR /src
COPY . .
RUN go build -o /lapp-docker main.go

FROM alpine:3.19
COPY --from=build /lapp-docker /lapp-docker
EXPOSE 8080
CMD ["/lapp-docker"]
