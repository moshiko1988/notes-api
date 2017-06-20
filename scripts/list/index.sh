#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
TOKEN="BAhJIiVkNjZmZTlhNmUwNTRjZDIwMWM1NGY2MzA0MThlYTI0NQY6BkVG--a31ece624802cc1f4d1fbf6ac5ada12976b899d5"
URL_PATH="/lists"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
