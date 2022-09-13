#!/bin/bash

set -e

echo Y | npx express-generator backend --no-view

git config user.name "codebot"
git config user.email "codebot@github.com"
git add .
git commit -m "init backend app"
git fetch origin main
git push origin HEAD:main