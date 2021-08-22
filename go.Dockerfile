FROM golang:alpine AS builder
COPY . /build
WORKDIR /build
RUN CGO_ENABLED=0 GOOS=linux go build -o kubespy-port-demo .
RUN CGO_ENABLED=0 GOOS=linux go build -o kubespy-port-demo .

FROM scratch
COPY --from=builder /build/ /go/bin/
WORKDIR /go/bin/
ENTRYPOINT ["/go/bin/kubespy-port-demo"]
