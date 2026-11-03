terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.2.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "serving_img" {
  name = "mlops-image"
  build {
    context = "${path.module}/../"
    label = {
      author : "edgar"
    }
  }
}


resource "docker_container" "serving_container" {
  image = docker_image.serving_img.image_id
  name  = "mlops-container"
  ports {
    internal = 80
    external = 8000
  }
}
