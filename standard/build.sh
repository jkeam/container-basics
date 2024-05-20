#!/bin/bash

(
cd ..
podman image build -f ./standard/Containerfile -t localhost/web .
)
