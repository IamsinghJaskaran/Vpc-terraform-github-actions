variable "vpc_cidr" {
  description = "Cidr range"
  type        = string

}
variable "subnet_cidr" {
  description = "subnet Cidr"
  type        = list(string)

}
variable "instance_type" {
  description = "instance type"
  type        = string
}