resource "aws_iam_user" "demo_user" {
  name = "Demo user"
}

resource "aws_iam_access_key" "demo_user_access_key" {
  user = aws_iam_user.demo_user.name
}

resource "aws_iam_user_policy" "s3-policy" {
  name = "ListBuckets"
  user = aws_iam_user.demo_user.name
  policy = jsonencode({
    Version: "2012-10-17"
    Statement = [{
      Action = ["ec2:Describe"]
    }]
    Effect = "Allow"
    Resource = "*"
  })
}