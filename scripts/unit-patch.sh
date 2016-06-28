#!/bin/bash
TOKEN=BAhJIiUyNDIwYTVhMzQ0N2ExOTg0ZDAxYTNiNDY2OTA4NzNlMgY6BkVG--7eb018240bdc6185dda0f272420e6da0f16f200f
ID=6
curl --include --request PATCH http://localhost:3000/units/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "units": {
      "num_bathrooms": "2"
    }
  }'


ID=3

curl --include --request PATCH http://localhost:3000/units/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "units": {
      "num_bedrooms": "4"
    }
  }'
