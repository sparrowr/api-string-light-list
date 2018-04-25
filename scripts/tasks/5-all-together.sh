#!/bin/bash

# make sure to get token and user ID by signing in

TOKEN=BAhJIiUzNjE0Zjk1ZTkwODdlODZiZjY4ODAzYjk1NDVjZWVkNgY6BkVG--56ced0741693e8e3dc6400ff3150f2fae2cc874b

echo "creating a task"
TEXT=text CONDITION=n USER=2 sh ./scripts/tasks/0-create.sh

echo "reading all tasks"
sh ./scripts/tasks/1-read-all.sh

echo "reading one task"
ID=2 sh ./scripts/tasks/2-read-one.sh

echo "updating one task"
TEXT='some text' CONDITION=d sh ./scripts/tasks/3-update.sh

# update this to make sure the task exists
echo "deleting one task"
ID=3 sh ./scripts/tasks/4-destroy.sh

echo "reading all tasks"
sh ./scripts/tasks/1-read-all.sh
