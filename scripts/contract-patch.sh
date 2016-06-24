#!/bin/bash
TOKEN=BAhJIiVhYzAxZWRjYjVlZjk2OGFiYTRkZjlmZDJmNDFmZWJjMgY6BkVG--2e405ed51a10ffed07182ac3e2263c65161e593c
ID=1

curl --include --request PATCH http://localhost:3000/contracts/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contracts": {
      "num_tenants": "2",
      "rent": "2000",
      "security": "6000",
      "unit_id": "1"
    }
  }'
