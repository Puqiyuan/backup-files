#!/bin/bash

while inotifywait -r -e modify,create,delete /home/pqy7172/llvm-project; do
    rsync -avz /home/pqy7172/llvm-project pqy@cs6.swfu.edu.cn:/var/home/pqy/
done
