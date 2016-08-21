#!/bin/bash

TOKEN=BAhJIiUzNWFlYWRjMDY1MGYxZWEwOTFiMDBkMTc1OTkzYWNlMQY6BkVG--7a777c5cf0ab5738575f387da388fe040b88c02d
ID=70
curl --include --request GET http://localhost:3000/units/$ID/contracts \
  --header "Authorization: Token token=$TOKEN"
