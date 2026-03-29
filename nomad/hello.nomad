job "hello" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "python:3.11-slim"
        command = "python"
        args    = ["-c", "print('Hello, DevOps!')"]
      }

      resources {
        cpu    = 100
        memory = 64
      }
    }
  }
}
