FROM golang:latest as build-base
ADD . /go/
WORKDIR /go/src/github.com/travisjeffery/jocko
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o cmd/kadm/kadm cmd/kadm/*.go

FROM busybox
COPY --from=build-base /go/src/github.com/travisjeffery/jocko/cmd/kadm/kadm /usr/local/bin/kadm
CMD ["kadm"]
