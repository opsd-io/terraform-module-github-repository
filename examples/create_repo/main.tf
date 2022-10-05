module "terraform-github" {
  source = "../../"

  # Setup basic repository settings
  repository_name        = "test_repo"
  repository_description = "Brief description of the test_repo project."
  repository_visibility  = "public"

  # Enabling/disabling repository features
  repository_has_issues   = true
  repository_has_wiki     = true
  repository_has_projects = true

  # Manually/automatically delete head branch after a pull request is merged.
  repository_delete_branch_on_merge = false

  # Use the terraform-module-template repo owned by the opsd-io team as template
  repository_template_repository = "terraform-module-template"
  repository_template_owner      = "opsd-io"

  # Set tag protection
  repository_tag_protection_pattern = "v*"

  # Set default branch to `main`, make it protected and owned by the `terraformers` team.
  repository_default_branch = "main"
}
