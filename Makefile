all: build-kadm

deps:
	which dep 2>/dev/null || go get -u github.com/golang/dep/cmd/dep; \
	cd src/github.com/travisjeffery/jocko; \
	dep ensure -v 

build-kadm: deps
	CGO_ENABLED=0 go build -o kadm -a -installsuffix cgo src/github.com/travisjeffery/jocko/cmd/kadm/*.go
