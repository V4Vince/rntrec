#!/bin/bash

TOKEN=BAhJIiU1MWEzM2M0MTE1YWY3ODFkMTMyY2MwNGFjODVkMGRjYQY6BkVG--f50cd09acf01146c74823a82ae78b689adfe1756
ID=70
curl --include --request GET http://localhost:3000/units/$ID/contracts \
  --header "Authorization: Token token=$TOKEN"
