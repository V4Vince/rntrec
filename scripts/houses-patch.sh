#!/bin/bash
TOKEN=BAhJIiVhYzAxZWRjYjVlZjk2OGFiYTRkZjlmZDJmNDFmZWJjMgY6BkVG--2e405ed51a10ffed07182ac3e2263c65161e593c
ID=2

curl --include --request PATCH http://localhost:3000/houses/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
      "houses": {
        "street_name": "256 Princeton Blvd"
    }
  }'


  TOKEN=BAhJIiUzMDdkZjk3ODQ1ZWI3YmQ4ODM0MTNhM2M1NjBlNGZiOQY6BkVG--cf7fb90c5475702282cc32509de9a7fa9df35405
  ID=2
  curl --include --request PATCH http://localhost:3000/houses/$ID \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
        "houses": {
          "num_units": "2",
          "purchase_price": "225000",
          "current_price": "350000"
      }
    }'
