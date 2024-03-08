<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.38 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.39.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_resourcegroups_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourcegroups_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A description of the resource group. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The resource group's name. It can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores.<br>    The name cannot start with AWS or aws. | `string` | n/a | yes |
| <a name="input_query"></a> [query](#input\_query) | The query that defines the membership of the group. This is a structure with properties that depend on the Type.<br>    Only `TAG_FILTERS_1_0` type is supported.<br>    `tag_filter` - A list of key-value pair objects that limit which resources can be members of the resource group.<br>    `resource_filter` - A list of resource types that can be included in the resource group. | <pre>object({<br>    tag_filter      = optional(map(string), {})<br>    resource_filter = optional(list(string), ["AWS::AllSupported"])<br>  })</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags to assign to the resource group. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the resource group. |
| <a name="output_name"></a> [name](#output\_name) | The name of the resource group. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
