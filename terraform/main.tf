terraform {
  required_version = ">0.15.0"
  required_providers = {
    "local" = {
      "source" = "hashicorp/local"
      "version" = "2.1.0"
    }
  }
}

variable "secret" {
  type = string
}

resource "local_file" "secret" {
  filename = "/run/secret"
  file_permission = "0600"
  content = var.secret
}
