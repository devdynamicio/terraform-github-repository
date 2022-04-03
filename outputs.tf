output "name" {
  value       = github_repository.this.name
  description = "A string of the form \"reponame\""
}

output "full_name" {
  value       = github_repository.this.full_name
  description = "A string of the form \"orgname/reponame\""
}

output "html_url" {
  value       = github_repository.this.ssh_clone_url
  description = "URL to the repository on the web"
}

output "ssh_clone_url" {
  value       = github_repository.this.ssh_clone_url
  description = "URL to the repository to clone via SSH"
}

output "http_clone_url" {
  value       = github_repository.this.http_clone_url
  description = "URL to clone the repository via HTTPs"
}

output "git_clone_url" {
  value       = github_repository.this.git_clone_url
  description = "URL to clone the repository via the git protocol"
}

output "svn_url" {
  value       = github_repository.this.svn_url
  description = "URL to check out the repository via GitHub's Subversion protocol emulation"
}

output "node_id" {
  value       = github_repository.this.node_id
  description = "Node ID of the Repository"
}

output "repo_id" {
  value       = github_repository.this.name
  description = "ID of the Repository"
}
