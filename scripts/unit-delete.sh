#!/bin/bash

TOKEN=BAhJIiViM2JmY2I2ZmI3MTg1MTkzNWIwNjljY2Q5YTkwZWY1NAY6BkVG--ebbb34d536b76e4b3f1964e8e8f267c5f0779cc1
ID=7

curl --include --request DELETE http://localhost:3000/units/$ID \
  --header "Authorization: Token token=$TOKEN"
