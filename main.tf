locals {
  filters = [
    for key, value in var.query.tag_filter : {
      "Key"    = key
      "Values" = flatten([value])
    }
  ]
  query = <<-JSON
  {
    "ResourceTypeFilters": ${jsonencode(var.query.resource_filter)},
    "TagFilters": ${jsonencode(local.filters)}
  }
  JSON
}

resource "aws_resourcegroups_group" "this" {
  name        = var.name
  description = var.description

  resource_query {
    type  = "TAG_FILTERS_1_0"
    query = local.query
  }

  tags = merge(
    {
      "Name" = var.name
    },
    var.tags,
  )
}
