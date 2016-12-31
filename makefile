ARCH := $(shell getconf LONG_BIT)
GOARCH_32 := 386
GOARCH_64 := amd64
GO_ARCH ?= $(GOARCH_$(ARCH))

BUILDDIR=build/$(GOOS)/$(GO_ARCH)/

all: program

program:
	go build -o $(BUILDDIR)/gowebclient -v

linux-amd64:
 	export GOOS=linux
	export GOARCH=$(GO_ARCH)

container : linux-amd64 program
	cp ./Dockerfile $(BUILDDIR)
	# ignore errors from remove image
	-docker rmi -f gowebclient
	docker build -t gowebclient $(BUILDDIR)

clean:
	rm -rf build
