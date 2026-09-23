#!/bin/bash -ex
cd /workspaces/debian
mkdir -p results
./scripts/04_search.sh > results/search.txt
cat results/search.txt
./scripts/05_delete.sh
ls -lR lab0 > results/part3-tree.txt
git status
git add lab0 results/search.txt results/part3-tree.txt
git commit -m "сохранить результаты поиска и удалить заданные объекты"
git status
git log --oneline
