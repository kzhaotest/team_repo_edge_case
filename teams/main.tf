variable "repo_name" {
  description = "repo name"
}

locals {
    teams = toset(["team1", "team2", "team3", "team4", "team5", "team6", "team7", "team8", "team9", "team10"])
}


resource "github_team" "team1" {
  for_each   = local.teams
  name        = each.key
  description = "Some cool team"
}

resource "github_team_repository" "base_teams" {
  for_each   = local.teams
  team_id    = each.key
  repository = var.repo_name
  permission = "push"
}
