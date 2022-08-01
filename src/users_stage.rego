package users

users_stage := {
    "alice": {
        "roles": ["admin"],
        "location": {
            "country": "US",
            "ip": "8.8.8.8"
        }
    },
    "bob": {
        "roles": ["employee", "billing"],
        "location": {
            "country": "US",
            "ip": "8.8.8.8"
        }
    },
    "eve": {
        "roles": ["customer"],
        "location": {
            "country": "US",
            "ip": "8.8.8.8"
        }
    }
}