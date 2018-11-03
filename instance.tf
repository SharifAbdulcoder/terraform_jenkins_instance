resource "aws_instance" "newname" {
  ami                       = "${lookup(var.amis, var.region)}"
  instance_type             = "${var.instancetype}"
  key_name                  = "terraformjenkins"
  associate_with_private_ip = "true"
  count                     = "${var.count}"
}
