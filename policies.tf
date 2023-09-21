# Create an Iam policy with admin access
resource "aws_iam_policy" "admin_policy" {
  name        = "admin-policy"
  description = "Admin access policy"

  policy = <<-EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
  EOT
}