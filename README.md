# GitHub Repositories Terraform module

Terraform Module for managing GitHub [Repositories](https://developer.github.com/v3/repos/) and associated resources.

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

## Requirements

This module requires Terraform version `0.13.0` or newer.

## Dependencies

This module depends on a correctly configured [GitHub Provider](https://www.terraform.io/docs/providers/github/index.html) in your Terraform codebase.

## Usage

Add the module to your Terraform resources like so:

```hcl
module "simple_example" {
  source  = "devdynamicio/terrraform-github-repository"
  version = "1.0.0"

  name       = "simple"
  visibility = false
}
```

Additional usage examples are available in the `examples`.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 4.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch_default.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_merge_commit"></a> [allow\_merge\_commit](#input\_allow\_merge\_commit) | Toggle to enable Merge Commits for the Repository | `bool` | `true` | no |
| <a name="input_allow_rebase_merge"></a> [allow\_rebase\_merge](#input\_allow\_rebase\_merge) | Toggle to enable Rebase Merges for the Repository | `bool` | `true` | no |
| <a name="input_allow_squash_merge"></a> [allow\_squash\_merge](#input\_allow\_squash\_merge) | Toggle to enable Squash Merges for the Repository | `bool` | `true` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Toggle to archive the Repository on destroy | `bool` | `false` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | Toggle to archive the Repository (see notes in `README.md`) | `bool` | `false` | no |
| <a name="input_auto_init"></a> [auto\_init](#input\_auto\_init) | Toggle to create an initial commit in the Repository | `bool` | `false` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | Name of the Default Branch of the Repository | `string` | `"main"` | no |
| <a name="input_delete_branch_on_merge"></a> [delete\_branch\_on\_merge](#input\_delete\_branch\_on\_merge) | Toggle to automatically delete merged Branches for the Repository | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the Repository | `string` | `""` | no |
| <a name="input_gitignore_template"></a> [gitignore\_template](#input\_gitignore\_template) | Template to use for initial `.gitignore` file for the Repository | `string` | `""` | no |
| <a name="input_has_downloads"></a> [has\_downloads](#input\_has\_downloads) | Toggle to enable (deprecated) GitHub Downloads for the Repository | `bool` | `false` | no |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues) | Toggle to enable GitHub Issues for the Repository | `bool` | `true` | no |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects) | Toggle to enable GitHub Projects for the Repository | `bool` | `false` | no |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki) | Toggle to enable GitHub Wiki for the Repository | `bool` | `true` | no |
| <a name="input_homepage_url"></a> [homepage\_url](#input\_homepage\_url) | URL of a page describing the Repository | `string` | `""` | no |
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | Toggle to enable Template use for the Repository | `bool` | `false` | no |
| <a name="input_license_template"></a> [license\_template](#input\_license\_template) | Identifier to use for initial `LICENSE` file for the Repository | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Repository | `string` | `""` | no |
| <a name="input_pages"></a> [pages](#input\_pages) | Configuration block for GitHub Pages | `map(any)` | `{}` | no |
| <a name="input_template"></a> [template](#input\_template) | Template Repository to use when creating the Repository | `map(string)` | `{}` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | List of Topics of the Repository | `list(string)` | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Toggle to create a Private Repository | `string` | `"private"` | no |
| <a name="input_vulnerability_alerts"></a> [vulnerability\_alerts](#input\_vulnerability\_alerts) | Toggle to enable Vulnerability Alerts for the Repository | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | A string of the form "orgname/reponame" |
| <a name="output_git_clone_url"></a> [git\_clone\_url](#output\_git\_clone\_url) | URL to clone the repository via the git protocol |
| <a name="output_html_url"></a> [html\_url](#output\_html\_url) | URL to the repository on the web |
| <a name="output_http_clone_url"></a> [http\_clone\_url](#output\_http\_clone\_url) | URL to clone the repository via HTTPs |
| <a name="output_name"></a> [name](#output\_name) | A string of the form "reponame" |
| <a name="output_node_id"></a> [node\_id](#output\_node\_id) | Node ID of the Repository |
| <a name="output_repo_id"></a> [repo\_id](#output\_repo\_id) | ID of the Repository |
| <a name="output_ssh_clone_url"></a> [ssh\_clone\_url](#output\_ssh\_clone\_url) | URL to the repository to clone via SSH |
| <a name="output_svn_url"></a> [svn\_url](#output\_svn\_url) | URL to check out the repository via GitHub's Subversion protocol emulation |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
