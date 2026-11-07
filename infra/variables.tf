variable "image_name" {
	type = string
	description = "Name of the container image"
	default = "mlops-image"
}

variable "context" {
	type = string
	description = "Path to the Dockerfile used to build the image"
	default = "../"
}

variable "author" {
	type = string
	description = "Author of the infrastructure configuration file "
}

variable "container_name" {
	type = string
	description = "Name of the container"
	default = "mlops-container"
}

variable "container_internal_port" {
	type = number
	description = "Internal port where the app is listening to"
	default = 8000
}

variable "container_external_port" {
	type = number
	description = "External port of the container towards the outer network"
	default = 8080
}
