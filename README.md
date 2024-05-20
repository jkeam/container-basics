# Container Basics

Container Basics.  We build a few containers.

1. Standard - We build a standard container using Podman.

2. Minimal - We build a smaller image similar to Standard
on a smaller base image and delete things we don't need.

3. Scratch - Build from nothing using Buildah.

## Prerequisites

1. Podman

2. Buildah

## Links

1. Inspired by [this blog](https://fedoramagazine.org/build-smaller-containers/)

2. [Buildah Scratch](https://github.com/containers/buildah/blob/main/docs/tutorials/01-intro.md)

### Networking

1. [Podman Networking](https://github.com/containers/podman/blob/main/docs/tutorials/basic_networking.md)

2. [Create Podman Network](https://docs.podman.io/en/latest/markdown/podman-network-create.1.html)

3. [Podman Rootless and Rootful Networking](https://www.redhat.com/sysadmin/container-networking-podman)

### UBIs

1. [Base Image](https://catalog.redhat.com/software/containers/ubi9/ubi/615bcf606feffc5384e8452e?container-tabs=overview&gti-tabs=unauthenticated&architecture=amd64&image=6633c5325203bd3e08ff16d5)

2. [Minimal](https://catalog.redhat.com/software/containers/ubi9/ubi-minimal/615bd9b4075b022acc111bf5?architecture=amd64&image=6633b5136d81a5634a616c41&container-tabs=overview)
