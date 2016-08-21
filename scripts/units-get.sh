#!/bin/bash

TOKEN=BAhJIiU2NGU0N2JiM2M3MzdhYWFiNDBmOWQ5ZjMwZTcxMmVkMgY6BkVG--acfc44b82a8399a421b0ba04af8a8901d5fc5aef
ID=16
curl --include --request GET http://localhost:3000/houses/$ID/units \
  --header "Authorization: Token token=$TOKEN"
