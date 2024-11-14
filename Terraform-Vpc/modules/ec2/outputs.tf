output "intances" {
  value = aws_instance.web.*.id
}