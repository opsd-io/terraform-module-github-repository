locals {

}

resource "github_repository" "main" {
  name        = var.repository_name
  description = var.repository_description

  visibility = var.repository_visibility

  template {
    owner      = var.repository_template_owner
    repository = var.repository_template_repository
  }
}
