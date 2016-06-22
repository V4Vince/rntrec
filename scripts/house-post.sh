#!/bin/bash
TOKEN=BAhJIiUzMDdkZjk3ODQ1ZWI3YmQ4ODM0MTNhM2M1NjBlNGZiOQY6BkVG--cf7fb90c5475702282cc32509de9a7fa9df35405

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
