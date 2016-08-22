#!/bin/bash

TOKEN=BAhJIiU5MzI2YjBmYTU1YThhZmYxY2EwMTYwZmI1NTJjMDk1MwY6BkVG--59cd7dfbc4f1b9756cc3a8f66e1a91bd45a61d95
curl --include --request POST http://localhost:3000/contracts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contracts": {
      "start": "20160312",
      "end": "20160320",
      "num_tenants": "6",
      "rent": "1200",
      "security": "1200",
      "unit_id": "75"
    }
  }'
