#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks/"
TOKEN="BAhJIiVkNjZmZTlhNmUwNTRjZDIwMWM1NGY2MzA0MThlYTI0NQY6BkVG--a31ece624802cc1f4d1fbf6ac5ada12976b899d5"
curl "${API}${URL_PATH}" \
  --include \
  --header "Authorization: Token token=$TOKEN" \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "task": {
      "name": "'"${NAME}"'"
    }
  }'


echo
