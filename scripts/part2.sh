#!/bin/bash -ex
cd /workspaces/debian
mkdir -p results
./scripts/03_links.sh
ls -liR lab0 > results/part2-tree.txt

git status
git add lab0 results/part2-tree.txt
git commit -m "выполнить копирование перемещение и создать ссылки"
git status
