#!/bin/bash

TOKEN=BAhJIiUzNWFlYWRjMDY1MGYxZWEwOTFiMDBkMTc1OTkzYWNlMQY6BkVG--7a777c5cf0ab5738575f387da388fe040b88c02d
ID=16
curl --include --request GET http://localhost:3000/houses/$ID/expenses \
  --header "Authorization: Token token=$TOKEN"


TOKEN=BAhJIiUzNWFlYWRjMDY1MGYxZWEwOTFiMDBkMTc1OTkzYWNlMQY6BkVG--7a777c5cf0ab5738575f387da388fe040b88c02d
ID=70
curl --include --request GET http://localhost:3000/units/$ID/expenses \
  --header "Authorization: Token token=$TOKEN"
