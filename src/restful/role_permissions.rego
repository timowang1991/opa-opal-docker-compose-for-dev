package role_permissions

role_permissions := {
    "customer": [
        {
            "action": "read",
            "type": "dog"
        },
        {
            "action": "read",
            "type": "cat"
        },
        {
            "action": "adopt",
            "type": "dog"
        },
        {
            "action": "adopt",
            "type": "cat"
        }
    ],
    "employee": [
        {
            "action": "read",
            "type": "dog"
        },
        {
            "action": "read",
            "type": "cat"
        },
        {
            "action": "update",
            "type": "dog"
        },
        {
            "action": "update",
            "type": "cat"
        }
    ],
    "billing": [
        {
            "action": "read",
            "type": "finance"
        },
        {
            "action": "update",
            "type": "finance"
        }
    ]
}