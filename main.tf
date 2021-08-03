provider "github" {
  owner = "kzhaotest"
}

module "repo" {
  source      = "./repo"
  name        = "test_teams_1"
}

module "teams" {
  source      = "./teams"
  repo_name   = module.repo.name
}

