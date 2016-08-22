#!/bin/bash

TOKEN=BAhJIiVkMDUyNmRmZjMwZDYzOWU3OGJiYjlkMDczNjZiN2UyOAY6BkVG--9ad3b8c2bc404db69cab8c4eb323311c6f442e0a
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

  TOKEN=BAhJIiU0NzU2Yzc0MDIwNTAyNjM0M2VjMWQ2OTYwNTlkZGRmZAY6BkVG--35ee7d4f65baea24163ee47a9d306528caf23b1f
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
