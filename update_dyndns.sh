#!/bin/bash

source /etc/dyndns.config

ip=$(curl -s ifconfig.co/)

curl -D- -X PUT -H "Content-Type: application/json" -H "X-Api-Key: $APIKEY" -d "{\"rrset_name\":\"$SUBDOMAIN\", \"rrset_type\":\"A\", \"rrset_ttl\":\"$TTL\", \"rrset_values\":[\"$ip\"]}" $RECORD_ENDPOINT/$SUBDOMAIN/A

