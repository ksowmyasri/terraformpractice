provider "docker" {
	host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx" {
	name = "nginx:latest"
}

