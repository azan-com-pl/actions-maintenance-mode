#!/usr/bin/env bash

curl \
  --request PUT \
  "https://api.cloudflare.com/client/v4/accounts/${CLOUDFLARE_ACCOUNT_ID}/storage/kv/namespaces/${CLOUDFLARE_KV_NAMESPACE_ID}/values/MAINTENANCE_PAGE_ENABLED" \
  --fail-with-body -s -S \
  -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
  -H "Content-Type: multipart/form-data" \
  --form 'value=true' \
  --form 'metadata={}'
