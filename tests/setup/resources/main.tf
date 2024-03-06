module "lambda_aft" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 7.2.1"

  publish = true

  function_name = "lambda-generic"
  handler       = "index.lambda_handler"
  runtime       = "python3.10"

  attach_cloudwatch_logs_policy = false
  create_role                   = false

  source_path = [
    "${path.module}/src/index.py",
  ]
  tags = {
    managed_by = "AFT"
  }
}

module "lambda_platform" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 7.2.1"

  publish = true

  function_name = "lambda-generic"
  handler       = "index.lambda_handler"
  runtime       = "python3.10"

  attach_cloudwatch_logs_policy = false
  create_role                   = false

  source_path = [
    "${path.module}/src/index.py",
  ]
  tags = {
    owner = "Platform"
  }
}
