resource "aws_ebs_volume" "example-volume" {
  availability_zone = "us-east-1a"
  type              = "gp2"
  size              = 10
}

resource "aws_volume_attachment" "example-volume-attachment" {
  device_name = "/dev/xvdb"
  instance_id = "i-09e70a9ae09391603"
  volume_id   = "${aws_ebs_volume.example-volume.id}"
}
