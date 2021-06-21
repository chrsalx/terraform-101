resource "netlify_deploy_key" "key" {}

resource "netlify_site" "main" {
  name = "terraform-101-site"

  repo {
    command       = "npm run build"
    deploy_key_id = "${netlify_deploy_key.key.id}"
    dir           = "/build"
    provider      = "github"
    repo_path     = "chrsalx/terraform-101-demo"
    repo_branch   = "main"
  }
}