#!/bin/bash

TOKEN=BAhJIiU5MzI2YjBmYTU1YThhZmYxY2EwMTYwZmI1NTJjMDk1MwY6BkVG--59cd7dfbc4f1b9756cc3a8f66e1a91bd45a61d95
ID=69
curl --include --request POST http://localhost:3000/units/$ID/expenses \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "expense": {
      "expense_for": "testing unit",
      "expense_description": "testing unit expense post",
      "expense_amount": "20",
      "expense_date": "20160312"
    }
  }'

  TOKEN=BAhJIiU5MzI2YjBmYTU1YThhZmYxY2EwMTYwZmI1NTJjMDk1MwY6BkVG--59cd7dfbc4f1b9756cc3a8f66e1a91bd45a61d95
  ID=16
  curl --include --request POST http://localhost:3000/units/$ID/expenses \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "expense": {
        "expense_for": "testing house",
        "expense_description": "testing house expense post",
        "expense_amount": "20",
        "expense_date": "20160312"
      }
    }'
