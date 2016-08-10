#!/bin/bash

TOKEN=BAhJIiVlZWY4YTM1MWFkMWY5NGUyNzY3MTRlZDc1ZThiMGYzNwY6BkVG--2d3623e7c9467e30a5a440706b55fe040dea7300

curl --include --request GET http://localhost:3000/expenses \
  --header "Authorization: Token token=$TOKEN"
