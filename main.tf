locals {

}

resource "github_repository" "main" {
  name        = var.repository_name
  description = var.repository_description

  visibility = var.repository_visibility

  has_issues   = var.repository_has_issues
  has_wiki     = var.repository_has_wiki
  has_projects = var.repository_has_projects

  delete_branch_on_merge = var.repository_delete_branch_on_merge

  template {
    owner      = var.repository_template_owner
    repository = var.repository_template_repository
  }

}
