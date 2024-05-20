#!/usr/bin/env bash
set -o errexit

(
cd ..
# Create a container
CONTAINER=$(buildah from scratch)

# Mount the container filesystem
MOUNTPOINT=$(buildah mount $CONTAINER)

# Install a basic filesystem and minimal set of packages, and httpd
dnf install -y --installroot $MOUNTPOINT --releasever 40 glibc-minimal-langpack httpd --nodocs --setopt install_weak_deps=False

dnf clean all -y --installroot $MOUNTPOINT --releasever 40

# Cleanup
buildah unmount $CONTAINER

# Copy the website
buildah copy $CONTAINER 'config/*' '/etc/httpd/conf/'
buildah copy $CONTAINER 'website/*' '/var/www/html/'

# Expose Port
buildah config --port 8080 $CONTAINER

# Start httpd
buildah config --cmd "httpd -DFOREGROUND" $CONTAINER

# Save the container to an image
buildah commit --squash $CONTAINER web-scratch
)
