package graphql

env = input.env { input.env }
else = opa.runtime().env.ENV

users_all_envs := {
	"dev": data.graphql.dev.users,
	"stage": data.graphql.stage.users
}

users := users_all_envs[env]
