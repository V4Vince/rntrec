#!/bin/bash
TOKEN=BAhJIiU1MWEzM2M0MTE1YWY3ODFkMTMyY2MwNGFjODVkMGRjYQY6BkVG--f50cd09acf01146c74823a82ae78b689adfe1756
ID=16
curl --include --request POST http://localhost:3000/houses/$ID/units \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "unit": {
      "unit_num": "testing",
      "num_bedrooms": "2",
      "num_bathrooms": "1",
      "num_parking": "1"
    }
  }'
