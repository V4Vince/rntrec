#!/bin/bash
TOKEN=BAhJIiViM2JmY2I2ZmI3MTg1MTkzNWIwNjljY2Q5YTkwZWY1NAY6BkVG--ebbb34d536b76e4b3f1964e8e8f267c5f0779cc1
ID=7
curl --include --request POST http://localhost:3000/units/$ID/contracts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "contracts": {
      "num_tenants": "20",
      "rent": "2500",
      "security": "7500"
    }
  }'
