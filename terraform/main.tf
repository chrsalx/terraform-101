resource "netlify_deploy_key" "key" {}

resource "netlify_site" "main" {
  name = "terraform-101"

  repo {
    repo_branch   = "main"
    command       = "npm run build"
    deploy_key_id = "${netlify_deploy_key.key.id}"
    dir           = "out"
    provider      = "github"
    repo_path     = "chrsalx/terraform-101"
  }
}