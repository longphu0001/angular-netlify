#!/bin/bash

# https://github.com/CircleCI-Public/circleci-cli

PROJECT_BIN="$PWD/bin"

if [ ! -d "$PROJECT_BIN" ]; then
    mkdir -p "$PROJECT_BIN"
fi

curl -fLSs https://circle.ci/cli | DESTDIR="$PROJECT_BIN" bash

if [ -d "$PROJECT_BIN" ]; then
    export PATH="$PROJECT_BIN:$PATH"
fi