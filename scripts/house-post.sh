#!/bin/bash
TOKEN=BAhJIiVhYzAxZWRjYjVlZjk2OGFiYTRkZjlmZDJmNDFmZWJjMgY6BkVG--2e405ed51a10ffed07182ac3e2263c65161e593c

curl --include --request POST http://localhost:3000/houses \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "houses": {
      "street_name": "449 Westford St",
      "num_units": "2",
      "purchase_price": "450000",
      "current_price": "500000"
    }
  }'
