#!/bin/bash

podman run --rm --name web-slim -p 8080:8080 localhost/web-slim
