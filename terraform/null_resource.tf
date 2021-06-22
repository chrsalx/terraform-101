resource "null_resource" "name" {
  count = var.create_resources ? 1 : 0
  
  provisioner "local-exec" {
      command = "echo 'hola mundo'"
  }
}