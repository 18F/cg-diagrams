#!/bin/sh

set -e
set -x

npm install
npm run build

# copy files to output directory, so that they can be read by subsequent step
if [ -n "$COPY_OUTPUT" ]; then
  cp -R public ../cg-diagrams-compiled
  cp manifest.yml ../cg-diagrams-compiled
fi
