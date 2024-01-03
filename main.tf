provider "local" {
  version = "~> 1.4"
}

resource "null_resource" "clone_and_run" {
  provisioner "local-exec" {
    command = <<EOF
    git clone https://github.com/rosenthalpreston/cp4---Mise-en-production-ITSM-GLPI-10.git
    cd cp4---Mise-en-production-ITSM-GLPI-10
    docker-compose up -d
    EOF
  }
}
