#!/bin/bash
TOKEN=BAhJIiUyNDIwYTVhMzQ0N2ExOTg0ZDAxYTNiNDY2OTA4NzNlMgY6BkVG--7eb018240bdc6185dda0f272420e6da0f16f200f
ID=9
curl --include --request POST http://localhost:3000/houses/$ID/units \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "units": {
      "unit_num": "1",
      "num_bedrooms": "4",
      "num_bathrooms": "2",
      "num_parking": "1",
      "expense": "2100"
    }
  }'
