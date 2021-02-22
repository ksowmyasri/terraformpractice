provider "docker" {
	host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx" {
	name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tdemo"
  ports {
    internal = 80
    external = 8000
  }
}
