package graphql.app.rbac

import future.keywords

test_eve {
    allow with input as { "user": "eve", "action": "finance", "env": "dev" }
}