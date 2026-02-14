#!/bin/bash

BRANCH="$(git rev-parse --abbrev-ref HEAD)"
git checkout --orphan latest
git add .
git commit -m "initial commit"
git branch -D $BRANCH
git branch -m $BRANCH
git push -f origin $BRANCH
