#!/bin/bash

curl "http://localhost:4741/tasks/${ID}" \
  --include \
  --request PATCH \
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
