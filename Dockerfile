FROM golang AS builder
WORKDIR /load-balancing
COPY . .
RUN go mod download
RUN CGO_ENABLED=1 GOOS=linux go build -o lb .
CMD ["./lb"]
