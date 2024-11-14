variable "sg_id" {
  description = "Security Group For alb "
  type = string
}
variable "subnets" {
    description = "subnets for alb"
    type = list(string)
  
}
variable "vpc_id" {
  description = "Vpc for Target_group"
  type = string

}
variable "instances" {
  description = "instance Id for target group attachment "
  type = list(string)
}