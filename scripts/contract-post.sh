#!/bin/bash

TOKEN=BAhJIiVhOWRhZjYxYzY1MTUwOGUzNzA0ZTRiZjJkZTdiNzI5MAY6BkVG--b21f935d633bdeb87d477c26498553636bf53b6d
ID=73
curl --include --request POST http://localhost:3000/units/$ID/contracts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contracts": {
      "start": "20160312",
      "end": "20160320",
      "num_tenants": "6",
      "rent": "500",
      "security": "500"
    }
  }'
