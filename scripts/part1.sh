#!/bin/bash -ex

cd /workspaces/debian
mkdir -p results
./scripts/01_create.sh
./scripts/02_permissions.sh

ls -lR lab0 > results/part1-tree.txt
git status
git add .devcontainer .github scripts lab0 results/part1-tree.txt
git commit -m "создать дерево файлов и назначить права"
git status
