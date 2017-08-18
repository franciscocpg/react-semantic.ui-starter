#!/bin/bash

set -e
# npm i && npm run build
rm -rf node_modules up-deploy && mkdir up-deploy
npm i --production
cp -r dist node_modules _scripts/package.json up-deploy
