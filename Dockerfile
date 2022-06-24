FROM golang:1.7.3
WORKDIR /app
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux -a -installsuffix cgo -o main
CMD ["./main"]