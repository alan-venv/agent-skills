#!/bin/bash

git branch | grep -v $(git branch --show-current) | xargs git branch -D
git gc --aggressive --prune=all
