# terraform-github

<a href="https://www.opsd.io" target="_blank"><img alt="OPSd" src=".github/img/OPSD_logo.svg" width="150px"></a>

## Introduction

A Terraform module for creating and managing GitHub repositories.

## Usage

The example of module usage.

## Related modules

The list of related modules.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.1 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 5.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 5.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_issue_label.breaking](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |
| [github_issue_label.chore](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |
| [github_issue_label.skip_changelog](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |
| [github_repository.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_tag_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_tag_protection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository_delete_branch_on_merge"></a> [repository\_delete\_branch\_on\_merge](#input\_repository\_delete\_branch\_on\_merge) | Automatically delete head branch after a pull request is merged. | `bool` | `true` | no |
| <a name="input_repository_description"></a> [repository\_description](#input\_repository\_description) | Brief description of the project. | `string` | `""` | no |
| <a name="input_repository_has_issues"></a> [repository\_has\_issues](#input\_repository\_has\_issues) | Enable the GitHub Issues on the repository. | `bool` | `true` | no |
| <a name="input_repository_has_projects"></a> [repository\_has\_projects](#input\_repository\_has\_projects) | Enable the GitHub Project on the repository. | `bool` | `false` | no |
| <a name="input_repository_has_wiki"></a> [repository\_has\_wiki](#input\_repository\_has\_wiki) | Enable the GitHub Wiki on the repository. | `bool` | `false` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | The name of the repository. | `string` | `""` | no |
| <a name="input_repository_tag_protection_pattern"></a> [repository\_tag\_protection\_pattern](#input\_repository\_tag\_protection\_pattern) | The pattern of the tag to protect. | `string` | `"v*"` | no |
| <a name="input_repository_template_owner"></a> [repository\_template\_owner](#input\_repository\_template\_owner) | The GitHub organization or user the template repository is owned by. | `string` | `"opsd-io"` | no |
| <a name="input_repository_template_repository"></a> [repository\_template\_repository](#input\_repository\_template\_repository) | Name of the (template) repository from which to create the new repository. | `string` | `"terraform-module-template"` | no |
| <a name="input_repository_visibility"></a> [repository\_visibility](#input\_repository\_visibility) | Specify whether the created repository should be private or public. Available options `private` or `public`. | `string` | `"private"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Contributing

[Contributing](CONTRIBUTING.md)

## Support

If you have a problem with the module or want to propose a new feature, you can report it via the project's (Github) issue tracker.

If you want to discuss something in person, you can join our community on [Slack](https://join.slack.com/t/opsd-community/signup).

## License

[Apache License 2.0](LICENSE)
