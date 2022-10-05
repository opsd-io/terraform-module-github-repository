# Create GitHub repo from the tempate

Before you start, you need to create a [GitHub token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) or use an existing one.

Next, set the environment variable.

```bash
export GITHUB_TOKEN="ghp_your_github_token"
```

Now, you need to initialize terraform.

```shell
terraform init
```

Execute plan command.

```shell
terraform plan
```

and verify what will be created.

The last step is to create the repo

```shell
terrafrorm apply
```

**IMPORTANT**: Please double-check the command output. The vital section can be seen in the example `Plan: 6 to add, 0 to change, 0 to destroy`. Ensure that you understand the changes you are making.

Next, you will be asked

```shell
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:
```

Type 'yes' to approve and let the magic happen.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.1 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 5.3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_terraform-github"></a> [terraform-github](#module\_terraform-github) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
