variable "vpc_cidr" {
  description = "Cidr range"
  type = string
  
}
variable "subnet_cidr" {
    description = "subnet Cidr"
    type = list(string)
  
}
variable "subnet_names" {
  description = "Subnet_name"
  type = list(string)
  default = [ "publicsub1","publicsub2" ]
}