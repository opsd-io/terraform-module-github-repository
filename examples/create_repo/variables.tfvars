# Basic repo settings

repository_name        = "test_repo"
repository_description = "Brief description of the test_repo project."
repository_visibility  = "public"

# Enabling features

repository_has_issues   = true
repository_has_wiki     = true
repository_has_projects = true

# Delete branch

repository_delete_branch_on_merge = false

# Template from which the repo should be created

repository_template_repository = "terraform-module-template"
repository_template_owner      = "opsd-io"

# Enabling tag protection

repository_tag_protection_pattern = "v*"

# Set default branch to `main` and make it protected and owned by the `terraformers` team.

repository_default_branch = "main"
repository_owners         = ["terraformers"]
