# Role-based Access Control (RBAC)
# --------------------------------
#
# This example defines an RBAC model for a Pet Store API. The Pet Store API allows
# users to look at pets, adopt them, update their stats, and so on. The policy
# controls which users can perform actions on which resources. The policy implements
# a classic Role-based Access Control model where users are assigned to roles and
# roles are granted the ability to perform some action(s) on some type of resource.
#
# This example shows how to:
#
#	* Define an RBAC model in Rego that interprets role mappings represented in JSON.
#	* Iterate/search across JSON data structures (e.g., role mappings)
#
# For more information see:
#
#	* Rego comparison to other systems: https://www.openpolicyagent.org/docs/latest/comparison-to-other-systems/
#	* Rego Iteration: https://www.openpolicyagent.org/docs/latest/#iteration

package graphql.app.rbac

import data.graphql.role_permissions.role_permissions

# By default, deny requests
default allow = false

users := data.graphql.users

allow {
	user_is_admin
}

# Allow the action if the user is granted permission to perform the action.
allow {
	# Find permissions for the user.
	some permission
	user_is_granted[permission]

	# Check if the permission permits the action.
	input.action == permission

	# unless user location is outside US
	# country := data.users[input.user].location.country
	# country == "US"
}

# user_is_admin is true if...
user_is_admin {
	# for some `i`...
	# some i

	# "admin" is the `i`-th element in the user->role mappings for the identified user.
	users[input.user].roles[_] == "admin"
}

# user_is_viewer is true if...
user_is_viewer {
	# for some `i`...
	# some i

	# "viewer" is the `i`-th element in the user->role mappings for the identified user.
	users[input.user].roles[_] == "viewer"
}

# user_is_granted is a set of permissions for the user identified in the request.
# The `permission` will be contained if the set `user_is_granted` for every...
user_is_granted[permission] {
	# some i, j

	# `role` assigned an element of the user_roles for this user...
	role := users[input.user].roles[_]

	# `permission` assigned a single permission from the permissions list for 'role'...
	permission := role_permissions[role][_]
}
