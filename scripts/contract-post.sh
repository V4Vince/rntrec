#!/bin/bash
TOKEN=BAhJIiVmYzU0NmUzMmNmYWU5ZTlhNDM3NDVkZjJkZjA3NmYyZQY6BkVG--2ea46e116462b7ccba8e339b1a5d5804f1d8af7d

curl --include --request POST http://localhost:3000/contracts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contracts": {
      "num_tenants": "2",
      "rent": "2500",
      "security": "7500",
      "unit_id": "6"
    }
  }'
