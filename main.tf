resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "exit 1"
  }
}

module "something" {
  source = "amodule"

  arg = "${null_resource.test.id}"
}
