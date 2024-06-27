#!/bin/bash

set -ex

git branch -fd gh-pages
git checkout -b gh-pages
mkdir docs
cd docs
echo "<h1>hello! ${date -R}</h1>" > index.html
cd ..
git add .
git commit -m 'docs: update docs site'
git push --force origin gh-pages
