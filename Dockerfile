FROM golang:latest as build-base
ADD . /go
WORKDIR /go
RUN make build-kadm

FROM busybox
COPY --from=build-base /go/kadm /usr/local/bin/kadm
CMD ["kadm"]
