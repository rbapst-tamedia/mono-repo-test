terraform {
  required_version = "~> 1.10.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5.0"
    }
  }
}

provider "local" {}

data "local_file" "main_tf" {
  filename = "${path.module}/main.tf"
}

data "local_file" "venv_flask" {
  filename = "${path.module}/../../frontend/.venv/bin/flask"
}

output "main" {
  value = {
    file   = data.local_file.main_tf.filename
    md5sum = data.local_file.main_tf.content_md5
  }
}
output "flask" {
  value = {
    file   = data.local_file.venv_flask.filename
    md5sum = data.local_file.venv_flask.content_md5
  }
}
