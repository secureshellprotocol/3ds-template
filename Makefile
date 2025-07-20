.PHONY: clean all bootstrap

all: bootstrap
	podman run --rm -v ${CURDIR}:/devkitpro secureshellprotocol/devkitpro-env:latest make -f 3ds.Makefile

cia: bootstrap
	podman run --rm -v ${CURDIR}:/devkitpro secureshellprotocol/devkitpro-env:latest make -f 3ds.Makefile cia

bootstrap:
	podman build -t secureshellprotocol:devkitpro-env ./docker
