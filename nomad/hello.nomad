job "hello-job" {
  datacenters = ["dc1"]

  group "hello-group" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "my-app"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
