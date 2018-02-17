job "nomad-test" {
  datacenters = ["dc1"]
  type = "batch"
  group "nomad-test-group" {
    task "alpine-hello" {
      driver = "docker"
      config {
        image = "alpine"
        command = "echo"
        args = ["hello, world!"]
      }
      resources {
        cpu    = 500 # 500 MHz
        network {
          mbits = 10
          port "db" {}
        }
      }
    }
  }
}
