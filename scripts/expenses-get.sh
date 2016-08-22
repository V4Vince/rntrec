#!/bin/bash

TOKEN=BAhJIiVkMDUyNmRmZjMwZDYzOWU3OGJiYjlkMDczNjZiN2UyOAY6BkVG--9ad3b8c2bc404db69cab8c4eb323311c6f442e0a
ID=16
curl --include --request GET http://localhost:3000/houses/$ID/expenses \
  --header "Authorization: Token token=$TOKEN"


TOKEN=BAhJIiVkMDUyNmRmZjMwZDYzOWU3OGJiYjlkMDczNjZiN2UyOAY6BkVG--9ad3b8c2bc404db69cab8c4eb323311c6f442e0a
ID=70
curl --include --request GET http://localhost:3000/units/$ID/expenses \
  --header "Authorization: Token token=$TOKEN"
