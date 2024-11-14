 variable "sg_id" {
  description = "value"
    type = string
}
variable "subnets" {
    description = "Subnets for Ec2"
    type= list(string)
}
variable "ec2_names" {
  type = list(string)
  default = [ "Server1","Server2" ]
}