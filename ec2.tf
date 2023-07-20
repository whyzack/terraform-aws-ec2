resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.ubuntu.image_id
  instance_type           = var.instance_type
  iam_instance_profile    = var.instance_profile_role
  key_name                = aws_key_pair.key.key_name
  vpc_security_group_ids  = var.sec_group_id
  subnet_id               = var.subnet_id
  tags                    = var.tags
  disable_api_termination = true
  monitoring              = var.monitoring
  source_dest_check       = var.source_dest

  root_block_device {
    delete_on_termination = var.delete_root_ebs
    encrypted             = true
    volume_size           = var.root_ebs_size
    volume_type           = var.root_ebs_type
  }

  maintenance_options {
    auto_recovery = var.auto_recovery
  }
}

resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = local.key
}