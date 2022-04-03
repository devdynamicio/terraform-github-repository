resource "github_repository" "this" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url

  visibility = var.visibility

  has_issues             = var.has_issues
  has_projects           = var.has_projects
  has_wiki               = var.has_wiki
  is_template            = var.is_template
  allow_merge_commit     = var.allow_merge_commit
  allow_squash_merge     = var.allow_squash_merge
  allow_rebase_merge     = var.allow_rebase_merge
  delete_branch_on_merge = var.delete_branch_on_merge
  has_downloads          = var.has_downloads
  auto_init              = var.auto_init
  gitignore_template     = var.gitignore_template
  license_template       = var.license_template

  archived           = var.archived
  archive_on_destroy = var.archive_on_destroy

  dynamic "pages" {
    for_each = length(var.pages) != 0 ? [var.template] : []

    content {
      source {
        branch = lookup(pages.value, "branch", var.default_branch)
        path   = lookup(pages.value, "path", null)
      }
    }
  }

  dynamic "template" {
    for_each = length(var.template) != 0 ? [var.template] : []

    content {
      owner      = lookup(template.value, "owner", null)
      repository = lookup(template.value, "repository", null)
    }
  }

  topics = var.topics

  vulnerability_alerts = var.vulnerability_alerts
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = var.default_branch
}
