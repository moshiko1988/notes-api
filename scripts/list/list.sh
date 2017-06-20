#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/lists"
TOKEN="BAhJIiVkNjZmZTlhNmUwNTRjZDIwMWM1NGY2MzA0MThlYTI0NQY6BkVG--a31ece624802cc1f4d1fbf6ac5ada12976b899d5"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "list": {
      "name": "'"${NAME}"'",
      "task_id": "'"${TASK_ID}"'"
    }
  }'

echo
