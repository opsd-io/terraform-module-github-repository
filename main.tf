terraform {
  required_version = ">= 1.5.7"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.0"
    }
  }
}

provider "github" {
  owner = "opsd-io"
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

resource "github_team_repository" "maintainers" {
  team_id    = var.maintainers_team_id
  repository = github_repository.main.name
  permission = "maintain"
}

# Protect the main branch.

resource "github_branch_protection_v3" "main" {
  repository     = github_repository.main.name
  branch         = var.repository_default_branch
  enforce_admins = true

  require_conversation_resolution = var.repository_require_conversation_resolution

  required_pull_request_reviews {
    require_code_owner_reviews      = var.repository_require_code_owner_reviews
    required_approving_review_count = var.repository_required_approving_review_count
  }
}

# Tag protection rules

resource "github_repository_tag_protection" "main" {
  repository = github_repository.main.name
  pattern    = var.repository_tag_protection_pattern
}

# Extra issue labels

resource "github_issue_label" "chore" {
  repository  = github_repository.main.name
  name        = "chore"
  description = "Changes to the build process or auxiliary tools and libraries such as documentation generation"
  color       = "E9C978"
}

resource "github_issue_label" "skip_changelog" {
  repository  = github_repository.main.name
  name        = "skip-changelog"
  description = "Exclude commit or PR from the changelog"
  color       = "E8B4CF"
}

resource "github_issue_label" "breaking" {
  repository  = github_repository.main.name
  name        = "breaking"
  description = "Breaking changes"
  color       = "C0084C"
}
