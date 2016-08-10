#!/bin/bash
TOKEN=BAhJIiVlZWY4YTM1MWFkMWY5NGUyNzY3MTRlZDc1ZThiMGYzNwY6BkVG--2d3623e7c9467e30a5a440706b55fe040dea7300
curl --include --request POST http://localhost:3000/units \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "unit": {
      "unit_num": "100",
      "num_bedrooms": "2",
      "num_bathrooms": "1",
      "num_parking": "1",
      "house_id" : "73"
    }
  }'
