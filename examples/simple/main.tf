module "simple" {
  source = "../../"

  name       = "simple"
  visibility = "private"
  auto_init  = true
}

provider "github" {
}
