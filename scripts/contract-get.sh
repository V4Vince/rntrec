#!/bin/bash

TOKEN=BAhJIiUyNDIwYTVhMzQ0N2ExOTg0ZDAxYTNiNDY2OTA4NzNlMgY6BkVG--7eb018240bdc6185dda0f272420e6da0f16f200f
ID=2
curl --include --request GET http://localhost:3000/units/$ID/contracts \
  --header "Authorization: Token token=$TOKEN"
