#!/bin/bash

curl "http://localhost:4741/quiz_banks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "quiz_banks": {
      "topic": "'"${TOPIC}"'"
    }
  }'

echo
