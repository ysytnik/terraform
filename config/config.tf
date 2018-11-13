terraform {
  backend "consul" {
    address = "demo.consul.io"
    path    = "getting-started-ysyter"
    lock    = false
    scheme  = "https"
  }
}