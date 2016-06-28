#!/bin/bash

TOKEN=BAhJIiUyNDIwYTVhMzQ0N2ExOTg0ZDAxYTNiNDY2OTA4NzNlMgY6BkVG--7eb018240bdc6185dda0f272420e6da0f16f200f
ID=9

curl --include --request GET http://localhost:3000/houses/$ID \
  --header "Authorization: Token token=$TOKEN"


TOKEN=BAhJIiUyNDIwYTVhMzQ0N2ExOTg0ZDAxYTNiNDY2OTA4NzNlMgY6BkVG--7eb018240bdc6185dda0f272420e6da0f16f200f

  curl --include --request GET http://localhost:3000/houses \
    --header "Authorization: Token token=$TOKEN"
