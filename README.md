# How to run
```
docker-compose up
```

* execute curl command
```bash
curl --location --request POST 'http://localhost:8181/v1/data/app/rbac/allow' \
--header 'Content-Type: application/json' \
--data-raw '{
    "input": {
        "user": "bob",
        "action": "update",
        "type": "cat"
    }
}'
```