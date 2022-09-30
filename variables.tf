variable "repository_name" {
  description = "The name of the repository."
  type        = string
  default     = ""
}

variable "repository_description" {
  description = "Brief description of the project."
  type        = string
  default     = ""
}

variable "repository_visibility" {
  description = "Specify whether the created repository should be private or public. Available options `private` or `public`."
  type        = string
  default     = "private"
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

variable "repository_tag_protection_pattern" {
  description = "The pattern of the tag to protect."
  type        = string
  default     = "v*"
}
