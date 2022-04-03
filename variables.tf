variable "name" {
  type        = string
  description = "Name of the Repository"
  default     = ""
}

variable "description" {
  type        = string
  description = "Description of the Repository"
  default     = ""
}

variable "homepage_url" {
  type        = string
  description = "URL of a page describing the Repository"
  default     = ""
}

variable "visibility" {
  type        = string
  description = "Toggle to create a Private Repository"
  default     = "private"
}

variable "has_issues" {
  type        = bool
  description = "Toggle to enable GitHub Issues for the Repository"
  default     = true
}

variable "has_projects" {
  type        = bool
  description = "Toggle to enable GitHub Projects for the Repository"
  default     = false
}

variable "has_wiki" {
  type        = bool
  description = "Toggle to enable GitHub Wiki for the Repository"
  default     = true
}

variable "is_template" {
  type        = bool
  description = "Toggle to enable Template use for the Repository"
  default     = false
}

variable "allow_merge_commit" {
  type        = bool
  description = "Toggle to enable Merge Commits for the Repository"
  default     = true
}

variable "allow_squash_merge" {
  type        = bool
  description = "Toggle to enable Squash Merges for the Repository"
  default     = true
}

variable "allow_rebase_merge" {
  type        = bool
  description = "Toggle to enable Rebase Merges for the Repository"
  default     = true
}

variable "delete_branch_on_merge" {
  type        = bool
  description = "Toggle to automatically delete merged Branches for the Repository"
  default     = false
}

variable "has_downloads" {
  type        = bool
  description = "Toggle to enable (deprecated) GitHub Downloads for the Repository"
  default     = false
}

variable "auto_init" {
  type        = bool
  description = "Toggle to create an initial commit in the Repository"
  default     = false
}

variable "gitignore_template" {
  type        = string
  description = "Template to use for initial `.gitignore` file for the Repository"
  default     = ""
}

variable "license_template" {
  type        = string
  description = "Identifier to use for initial `LICENSE` file for the Repository"
  default     = ""
}

variable "default_branch" {
  type        = string
  description = "Name of the Default Branch of the Repository"
  default     = "main"
}

variable "archived" {
  type        = bool
  description = "Toggle to archive the Repository (see notes in `README.md`)"
  default     = false
}

variable "archive_on_destroy" {
  type        = bool
  description = "Toggle to archive the Repository on destroy"
  default     = false
}

variable "pages" {
  type        = map(any)
  description = "Configuration block for GitHub Pages"
  default     = {}
}

variable "topics" {
  type        = list(string)
  description = "List of Topics of the Repository"
  default     = []
}

variable "template" {
  type        = map(string)
  description = "Template Repository to use when creating the Repository"
  default     = {}
}

variable "vulnerability_alerts" {
  type        = bool
  description = "Toggle to enable Vulnerability Alerts for the Repository"
  default     = true
}
