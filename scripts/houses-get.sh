#!/bin/bash

TOKEN=BAhJIiVmZWMwY2U2MmQ4OWUzZDZkZjcxODYwNTc4NmEwZWYyMQY6BkVG--0b36197b6c59ff66d7c904b8e827441e0b8d23c8

curl --include --request GET http://localhost:3000/houses/ \
  --header "Authorization: Token token=$TOKEN"
