#Installation

Create a config file in `/etc/dyndns`:

```
APIKEY=<gandi API key>
SUBDOMAIN=<your subdomain>
TTL=<TTL>
RECORD_ENDPOINT=https://dns.api.gandi.net/api/v5/zones/<uuid>/records
```

