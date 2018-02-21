resource "null_resource" "something" {
  provisioner "local-exec" {
    command = "echo ${var.arg}"
  }
}
