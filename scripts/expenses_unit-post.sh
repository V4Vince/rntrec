#!/bin/bash

TOKEN=BAhJIiU1MWEzM2M0MTE1YWY3ODFkMTMyY2MwNGFjODVkMGRjYQY6BkVG--f50cd09acf01146c74823a82ae78b689adfe1756
ID=70
curl --include --request POST http://localhost:3000/units/$ID/expenses \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "expense": {
      "expense_for": "testing",
      "expense_description": "testing unit expense post",
      "expense_amount": "20",
      "expense_date": "20160312"
    }
  }'
