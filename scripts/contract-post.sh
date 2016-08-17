#!/bin/bash

TOKEN=BAhJIiU1MWEzM2M0MTE1YWY3ODFkMTMyY2MwNGFjODVkMGRjYQY6BkVG--f50cd09acf01146c74823a82ae78b689adfe1756
ID=70
curl --include --request POST http://localhost:3000/units/$ID/contracts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contracts": {
      "start": "20160312",
      "end": "20160320",
      "num_tenants": "2",
      "rent": "2500",
      "security": "7500"
    }
  }'
