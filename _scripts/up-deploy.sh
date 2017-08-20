#!/bin/bash

set -e
npm i && DIST_PATH=./dist/client/en npm run build
mkdir -p up-deploy
cp -r dist _scripts/package.json up-deploy
cd up-deploy && npm i --production
