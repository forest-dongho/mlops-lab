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
  name = var.image_name
  build {
    context = var.context
    label = {
      author : var.author
    }
  }
}

# Create a container using the image built by the previous definition
resource "docker_container" "serving_container" {
  image = docker_image.serving_img.image_id
  name  = var.container_name
  ports {
    internal = var.container_internal_port
    external = var.container_external_port
  }
}
