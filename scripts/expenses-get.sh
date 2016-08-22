#!/bin/bash

TOKEN=BAhJIiU5MzI2YjBmYTU1YThhZmYxY2EwMTYwZmI1NTJjMDk1MwY6BkVG--59cd7dfbc4f1b9756cc3a8f66e1a91bd45a61d95
ID=16
curl --include --request GET http://localhost:3000/houses/$ID/expenses \
  --header "Authorization: Token token=$TOKEN"


TOKEN=BAhJIiU5MzI2YjBmYTU1YThhZmYxY2EwMTYwZmI1NTJjMDk1MwY6BkVG--59cd7dfbc4f1b9756cc3a8f66e1a91bd45a61d95
ID=70
curl --include --request GET http://localhost:3000/units/$ID/expenses \
  --header "Authorization: Token token=$TOKEN"
