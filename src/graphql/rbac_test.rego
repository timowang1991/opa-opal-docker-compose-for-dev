package graphql.app.rbac

import future.keywords

test_eve if {
    allow with input as { "user": "eve", "action": "finance" }
}