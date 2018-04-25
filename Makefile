build-kadm:
	CGO_ENABLED=0 go build -o kadm -a -installsuffix cgo src/github.com/travisjeffery/jocko/cmd/kadm/*.go
