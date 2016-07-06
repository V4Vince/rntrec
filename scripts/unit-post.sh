#!/bin/bash
TOKEN=BAhJIiVmYzU0NmUzMmNmYWU5ZTlhNDM3NDVkZjJkZjA3NmYyZQY6BkVG--2ea46e116462b7ccba8e339b1a5d5804f1d8af7d
curl --include --request POST http://localhost:3000/units \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "units": {
      "unit_num": "10",
      "num_bedrooms": "2",
      "num_bathrooms": "1",
      "num_parking": "1",
      "expense": "2000",
      "house_id" : "9"
    }
  }'
