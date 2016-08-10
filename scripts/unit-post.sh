#!/bin/bash
TOKEN=BAhJIiVmZWMwY2U2MmQ4OWUzZDZkZjcxODYwNTc4NmEwZWYyMQY6BkVG--0b36197b6c59ff66d7c904b8e827441e0b8d23c8
curl --include --request POST http://localhost:3000/units \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "unit": {
      "unit_num": "10",
      "num_bedrooms": "2",
      "num_bathrooms": "1",
      "num_parking": "1",
      "expense": "2000",
      "house_id" : "73"
    }
  }'
