#!/bin/bash

TOKEN=BAhJIiVkMDUyNmRmZjMwZDYzOWU3OGJiYjlkMDczNjZiN2UyOAY6BkVG--9ad3b8c2bc404db69cab8c4eb323311c6f442e0a
curl --include --request GET http://localhost:3000/units \
  --header "Authorization: Token token=$TOKEN"

  TOKEN=BAhJIiVkMDUyNmRmZjMwZDYzOWU3OGJiYjlkMDczNjZiN2UyOAY6BkVG--9ad3b8c2bc404db69cab8c4eb323311c6f442e0a
  ID=69
  curl --include --request GET http://localhost:3000/units/$ID \
    --header "Authorization: Token token=$TOKEN"
