#!/bin/bash

set -ex

git fetch origin gh-pages
git checkout gh-pages
git checkout main
git branch -fd gh-pages
git checkout -b gh-pages
mkdir docs
cd docs
d=$(date -R)
echo "<h1>hello! ${d}</h1>" > index.html
cd ..
git add .
git commit -m 'docs: update docs site'
git push --force origin gh-pages
