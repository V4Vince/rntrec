#!/bin/bash

TOKEN=BAhJIiVhYzAxZWRjYjVlZjk2OGFiYTRkZjlmZDJmNDFmZWJjMgY6BkVG--2e405ed51a10ffed07182ac3e2263c65161e593c

curl --include --request GET http://localhost:3000/houses/ \
  --header "Authorization: Token token=$TOKEN"
