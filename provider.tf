# Descargar json con credenciales de aquí:
# https://console.cloud.google.com/apis/credentials/serviceaccountkey
# Tras ello definir la variable de entorno apuntando a el json
# export GOOGLE_CLOUD_KEYFILE_JSON=path/file.json

variable "gcp_project" {
  # Configurar el nombre del proyecto en GCP
  default = "cnsa2021-fga432"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.58.0"
    }
  }
}
provider "google" {
  project = var.gcp_project
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = file("./credentials/fga432.json")
}
