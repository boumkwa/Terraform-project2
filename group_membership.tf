# Attach the admin access policy to the group
resource "aws_iam_policy_attachment" "admin_group_attachment" {
  name       = "policy-name"
  policy_arn = aws_iam_policy.admin_policy.arn
  groups     = [aws_iam_group.iam_group.name]
}
# Add the user to the group
resource "aws_iam_user_group_membership" "iam_user_membership" {
  user   = aws_iam_user.iam_user.name
  groups = [aws_iam_group.iam_group.name]
}