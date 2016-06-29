#!/bin/bash
TOKEN=BAhJIiViM2JmY2I2ZmI3MTg1MTkzNWIwNjljY2Q5YTkwZWY1NAY6BkVG--ebbb34d536b76e4b3f1964e8e8f267c5f0779cc1
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
