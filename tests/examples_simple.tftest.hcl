mock_provider "aws" {
//   override_data {
//     target = module.lambda_aft.data.aws_iam_policy_document.assume_role[0]
//     values = {
//       json = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Effect\":\"Allow\",\"Sid\":\"\"}]}"
//     }
//   }
}

run "setup" {
  command = apply
  module {
    source = "./tests/setup/resources"
  }
}

run "validate" {
  command = apply

  module {
    source = "./examples/simple"
  }
}
