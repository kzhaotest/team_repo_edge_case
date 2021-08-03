variable "name" {
  description = "repo name"
}

resource "github_repository" "testing" {
  name      = var.name
  auto_init = true
}

output "name" {
  value = github_repository.testing.name
}
