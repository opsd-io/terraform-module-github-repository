variable "repository_name" {
  description = "The name of the repository."
  type        = string
  default     = "test_repo"
}

variable "repository_description" {
  description = "Brief description of the project."
  type        = string
  default     = "test_repo desc"
}

variable "repository_visibility" {
  description = "Specify whether the created repository should be private or public. Available options `private` or `public`."
  type        = string
  default     = "public"
}

variable "repository_has_issues" {
  description = "Enable the GitHub Issues on the repository."
  type        = bool
  default     = true
}

variable "repository_has_wiki" {
  description = "Enable the GitHub Wiki on the repository."
  type        = bool
  default     = false
}

variable "repository_has_projects" {
  description = "Enable the GitHub Project on the repository."
  type        = bool
  default     = false
}

variable "repository_delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged."
  type        = bool
  default     = true
}

variable "repository_template_owner" {
  description = "The GitHub organization or user the template repository is owned by."
  type        = string
  default     = "opsd-io"
}

variable "repository_template_repository" {
  description = "Name of the (template) repository from which to create the new repository."
  type        = string
  default     = "terraform-module-template"
}

variable "repository_require_conversation_resolution" {
  description = "Resolve all the comments before PR can be merged"
  type        = bool
  default     = true
}

variable "repository_require_code_owner_reviews" {
  description = "Require code owners review before PR can be merged"
  type        = bool
  default     = true
}

variable "repository_required_approving_review_count" {
  description = "Require N aprovales before PR can be merged"
  type        = number
  default     = 1
}

variable "repository_tag_protection_pattern" {
  description = "The pattern of the tag to protect."
  type        = string
  default     = "v*"
}

variable "repository_default_branch" {
  description = "The default branch name."
  type        = string
  default     = "main"
}
