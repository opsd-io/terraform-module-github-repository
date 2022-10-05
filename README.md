<a href="https://www.opsd.io" target="_blank"><img alt="OPSd" src=".github/img/OPSD_logo.svg" width="180px"></a>

Meet **OPSd**. The unique and effortless way of managing cloud infrastructure.

Visit our website [www.opsd.io](https://www.opsd.io) for more details.

# terraform-github

## Introduction

A terraform module responsible for creating GitHub repositories from the templates.

## Usage

```
module "terraform-github" {
  source  = "github.com/opsd-io/terraform-github"
	version = ">= 0.1.0"

  # Setup basic repository settings
  repository_name        = "test_repo"
  repository_description = "Brief description of the test_repo project."
  repository_visibility  = "public"
}
```

**IMPORTANT**: Make sure not to pin to master because there may be breaking changes between releases.

You can find more example [here](examples).

## Related modules

No related modules.

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
| [github_branch_protection_v3.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection_v3) | resource |
| [github_issue_label.breaking](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |
| [github_issue_label.chore](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |
| [github_issue_label.skip_changelog](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |
| [github_repository.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_tag_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_tag_protection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository_default_branch"></a> [repository\_default\_branch](#input\_repository\_default\_branch) | The default branch name. | `string` | `"main"` | no |
| <a name="input_repository_delete_branch_on_merge"></a> [repository\_delete\_branch\_on\_merge](#input\_repository\_delete\_branch\_on\_merge) | Automatically delete head branch after a pull request is merged. | `bool` | `true` | no |
| <a name="input_repository_description"></a> [repository\_description](#input\_repository\_description) | Brief description of the project. | `string` | `"test_repo desc"` | no |
| <a name="input_repository_has_issues"></a> [repository\_has\_issues](#input\_repository\_has\_issues) | Enable the GitHub Issues on the repository. | `bool` | `true` | no |
| <a name="input_repository_has_projects"></a> [repository\_has\_projects](#input\_repository\_has\_projects) | Enable the GitHub Project on the repository. | `bool` | `false` | no |
| <a name="input_repository_has_wiki"></a> [repository\_has\_wiki](#input\_repository\_has\_wiki) | Enable the GitHub Wiki on the repository. | `bool` | `false` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | The name of the repository. | `string` | `"test_repo"` | no |
| <a name="input_repository_require_code_owner_reviews"></a> [repository\_require\_code\_owner\_reviews](#input\_repository\_require\_code\_owner\_reviews) | Require code owners review before PR can be merged | `bool` | `true` | no |
| <a name="input_repository_require_conversation_resolution"></a> [repository\_require\_conversation\_resolution](#input\_repository\_require\_conversation\_resolution) | Resolve all the comments before PR can be merged | `bool` | `true` | no |
| <a name="input_repository_required_approving_review_count"></a> [repository\_required\_approving\_review\_count](#input\_repository\_required\_approving\_review\_count) | Require N aprovales before PR can be merged | `number` | `1` | no |
| <a name="input_repository_tag_protection_pattern"></a> [repository\_tag\_protection\_pattern](#input\_repository\_tag\_protection\_pattern) | The pattern of the tag to protect. | `string` | `"v*"` | no |
| <a name="input_repository_template_owner"></a> [repository\_template\_owner](#input\_repository\_template\_owner) | The GitHub organization or user the template repository is owned by. | `string` | `"opsd-io"` | no |
| <a name="input_repository_template_repository"></a> [repository\_template\_repository](#input\_repository\_template\_repository) | Name of the (template) repository from which to create the new repository. | `string` | `"terraform-module-template"` | no |
| <a name="input_repository_visibility"></a> [repository\_visibility](#input\_repository\_visibility) | Specify whether the created repository should be private or public. Available options `private` or `public`. | `string` | `"public"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Contributing

If you are interested in contributing to the project, see see our [guide](CONTRIBUTING.md).

## Support

If you have a problem with the module or want to propose a new feature, you can report it via the project's (Github) [issue tracker](https://github.com/opsd-io/terraform-github/issues/new/choose).

If you want to discuss something in person, you can join our community on [Slack](https://join.slack.com/t/opsd-community/signup).

## License

[Apache License 2.0](LICENSE)
