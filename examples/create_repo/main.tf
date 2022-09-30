module "terraform-github" {
  source = "../../"

  name        = var.repository_name
  description = var.repository_description
  visibility  = var.repository_visibility

  has_issues   = var.repository_has_issues
  has_wiki     = var.repository_has_wiki
  has_projects = var.repository_has_projects

  delete_branch_on_merge = var.repository_delete_branch_on_merge

  repository = var.repository_template_repository
  owner      = var.repository_template_owner

  pattern = var.repository_tag_protection_pattern

  branch = var.repository_default_branch
  teams  = var.repository_owners
}
