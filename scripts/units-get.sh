#!/bin/bash

TOKEN=BAhJIiVmYzU0NmUzMmNmYWU5ZTlhNDM3NDVkZjJkZjA3NmYyZQY6BkVG--2ea46e116462b7ccba8e339b1a5d5804f1d8af7d
curl --include --request GET http://localhost:3000/units \
  --header "Authorization: Token token=$TOKEN"
