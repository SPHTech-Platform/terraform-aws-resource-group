variable "name" {
  description = <<EOF
    The resource group's name. It can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. 
    The name cannot start with AWS or aws.
  EOF
  type        = string
}

variable "description" {
  description = "A description of the resource group."
  type        = string
  default     = ""
}

variable "query" {
  description = <<EOF
    The query that defines the membership of the group. This is a structure with properties that depend on the Type.
    Only `TAG_FILTERS_1_0` type is supported.
    `tag_filter` - A list of key-value pair objects that limit which resources can be members of the resource group.
    `resource_filter` - A list of resource types that can be included in the resource group.
  EOF
  type = object({
    tag_filter      = map(string)
    resource_filter = optional(list(string), ["AWS::AllSupported"])
  })
  default = null
}

variable "tags" {
  description = "Key-value map of resource tags to assign to the resource group."
  type        = map(string)
  default     = {}
}
