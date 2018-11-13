variable "access_key" {}
variable "secret_key" {}
variable "region" {}

variable "cidrs" { default = [] }
//variable "amis" {
  //type = "map"
  //default = {
    //"eu-west-3" = "ami-5026902d"
    //"eu-west-2" = "ami-7c1bfd1b"
//  }
//}

//variable "region" {}
variable "amis" {
  type = "map"
}

