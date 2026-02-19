resource "aws_iam_role" "execution_role" {
  name               = "${local.name}-exec-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  tags               = local.merged_tags
}

