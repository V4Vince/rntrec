#!/bin/bash
TOKEN=BAhJIiUzMDdkZjk3ODQ1ZWI3YmQ4ODM0MTNhM2M1NjBlNGZiOQY6BkVG--cf7fb90c5475702282cc32509de9a7fa9df35405
ID=7

curl --include --request PATCH http://localhost:3000/houses/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
      "houses": {
        "street_name": "449 Westford St",
        "num_units": "3",
        "purchase_price": "450000",
        "current_price": "500000"
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
