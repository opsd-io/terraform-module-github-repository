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
