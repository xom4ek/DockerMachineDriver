#!/bin/bash

set -e

# OS="darwin linux windows"
OS="linux"
ARCH="amd64"

echo "Getting build dependencies"
# go get .
#go get -u github.com/golang/lint/golint

echo "Ensuring code quality"
# go vet ./...
#golint ./...

# dmver=$(cd $GOPATH/src/github.com/docker/machine && git describe --abbrev=0 --tags)
# echo "VERSION docker-machine '$dmver'"

for GOOS in $OS; do
    for GOARCH in $ARCH; do
        arch="$GOOS-$GOARCH"
        binary="bin/docker-machine-driver-otc.$arch"
        echo "Building $binary"
        GOOS=$GOOS GOARCH=$GOARCH go build -o $binary
    done
done
