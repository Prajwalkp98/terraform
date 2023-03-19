resource "null_resource" "file_copy" {
  connection {
    type = "ssh"
    host = var.ec2_public_ip
    user = var.root_ec2_user
    private_key = file(var.ec2_pem)
    agent = false
  }
  
  
  provisioner "file" {
    source      = var.root_source_path
    destination = var.root_destination_path
  }
}
