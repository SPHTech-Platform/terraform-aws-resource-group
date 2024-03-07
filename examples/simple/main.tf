module "tag" {
  source = "../.."

  name        = "rg-all-aft"
  description = "All Resources managed by AFT"
  query = {
    tag_filter = {
      managed_by = "AFT",
    }
  }
}

module "tag_and_type" {
  source = "../.."

  name        = "rg-lambda-ddb-aft"
  description = "All DDB owned by Platform"
  query = {
    resource_filter = [
      "AWS::DynamoDB::Table",
    ],
    tag_filter = {
      owner = "Platform",
    }
  }
}
