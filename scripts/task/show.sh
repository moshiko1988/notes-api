#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
TOKEN="BAhJIiUwNjk0NDBiZjk3NTFkNWRlNGNiYmI2YzgyYmMyNDQ1ZgY6BkVG--4f4fc00ef3d414d8b32e3a2dcba5ba67cd71b722"
curl "${API}${URL_PATH}" \
  --header "Authorization: Token token=$TOKEN" \
  --include \
  --request GET #\

echo
