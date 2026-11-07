terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.2.0"
    }
  }
}

# The resource provider 
provider "docker" {}

# Define a docker image using a local Dockerfile
resource "docker_image" "serving_img" {
  name = "mlops-image"
  build {
    context = "${path.module}/../"
    label = {
      author : "edgar"
    }
  }
}

# Create a container using the image built by the previous definition
resource "docker_container" "serving_container" {
  image = docker_image.serving_img.image_id
  name  = "mlops-container"
  ports {
    internal = 8000
    external = 8080
  }
}
