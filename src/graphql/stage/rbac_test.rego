package graphql.app.rbac

import future.keywords

test_eve if {
    not allow with input as { "user": "eve", "action": "finance", "env": "stage" }
}