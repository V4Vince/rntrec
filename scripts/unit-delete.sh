#!/bin/bash

TOKEN=BAhJIiVhYzAxZWRjYjVlZjk2OGFiYTRkZjlmZDJmNDFmZWJjMgY6BkVG--2e405ed51a10ffed07182ac3e2263c65161e593c
ID=3

curl --include --request DELETE http://localhost:3000/units/$ID \
  --header "Authorization: Token token=$TOKEN"
