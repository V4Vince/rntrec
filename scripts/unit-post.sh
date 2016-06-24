#!/bin/bash
TOKEN=BAhJIiVhYzAxZWRjYjVlZjk2OGFiYTRkZjlmZDJmNDFmZWJjMgY6BkVG--2e405ed51a10ffed07182ac3e2263c65161e593c

curl --include --request POST http://localhost:3000/units \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "units": {
      "unit_num": "3",
      "num_bedrooms": "3",
      "num_bathrooms": "1",
      "num_parking": "1",
      "expense": "2100",
      "house_id": "2"
    }
  }'
