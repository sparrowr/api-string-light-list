#!/bin/bash

# text, condition, user_id
curl "http://localhost:4741/tasks" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "task": {
      "text": "'"${TEXT}"'",
      "condition": "'"${CONDITION}"'",
      "user_id": 2
    }
  }'

echo
