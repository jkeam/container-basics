#!/bin/bash

(
cd ..
podman image build -f ./slim/Containerfile -t localhost/web-slim .
)
