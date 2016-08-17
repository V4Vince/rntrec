#!/bin/bash

TOKEN=BAhJIiU1MWEzM2M0MTE1YWY3ODFkMTMyY2MwNGFjODVkMGRjYQY6BkVG--f50cd09acf01146c74823a82ae78b689adfe1756
ID=16
curl --include --request GET http://localhost:3000/houses/$ID/units \
  --header "Authorization: Token token=$TOKEN"
