#!/bin/bash
TOKEN=BAhJIiVhYzAxZWRjYjVlZjk2OGFiYTRkZjlmZDJmNDFmZWJjMgY6BkVG--2e405ed51a10ffed07182ac3e2263c65161e593c

curl --include --request POST http://localhost:3000/contracts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contracts": {
      "start": "2014-03-12",
      "end": "2016-03-11",
      "num_tenants": "2",
      "rent": "1200",
      "security": "3600",
      "unit_id": "2"
    }
  }'
