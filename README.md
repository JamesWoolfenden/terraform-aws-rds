# terraform-aws-rds

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-rds/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-rds)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-rds.svg)](https://github.com/JamesWoolfenden/terraform-aws-rds/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-rds.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-rds/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-rds/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-rds&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-rds/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-rds&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module - creates an RDS instance. When you select tp create a Postgres DB, this module adds enables *pgaudit*, this is in line with Prowler and Bridgecrew AWS best practices.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing Terraform code:

```terraform
module "rds" {
  source            = "JamesWoolfenden/rds/aws"
  version           = "0.2.4"
  common_tags       = var.common_tags
  subnet_ids        = var.subnets
  instance          = var.instance
  instance_password = "Password123"
  rds_role          = data.aws_iam_role.rds
  kms_key_id        = data.aws_kms_key.rds.id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_parameter_group.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_db_subnet_group.access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_kms_key.rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_custom_db_group_name"></a> [custom\_db\_group\_name](#input\_custom\_db\_group\_name) | Your custom DB parameter group mane | `string` | `""` | no |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | The name of the subnet to use for the database | `string` | `"default"` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"Some description"` | no |
| <a name="input_family"></a> [family](#input\_family) | n/a | `string` | `"postgres11"` | no |
| <a name="input_instance"></a> [instance](#input\_instance) | Map of all the variables | `any` | n/a | yes |
| <a name="input_instance_password"></a> [instance\_password](#input\_instance\_password) | n/a | `string` | n/a | yes |
| <a name="input_monitoring_role_arn"></a> [monitoring\_role\_arn](#input\_monitoring\_role\_arn) | Role for Monitoring - the ARN | `string` | `""` | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | To comply with security rules CKV\_AWS\_17 this defaults to false | `bool` | `false` | no |
| <a name="input_rds_role"></a> [rds\_role](#input\_rds\_role) | The IAM ARN of the role for RDS monitoring | `string` | `""` | no |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | Encryption status | `bool` | `true` | no |
| <a name="input_subnet_group"></a> [subnet\_group](#input\_subnet\_group) | n/a | `list` | <pre>[<br>  {<br>    "description": "",<br>    "name": "database-1"<br>  }<br>]</pre> | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of Subnet ids | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_subnet_group"></a> [db\_subnet\_group](#output\_db\_subnet\_group) | n/a |
| <a name="output_instance"></a> [instance](#output\_instance) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-rds/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-rds/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-rds&url=https://github.com/JamesWoolfenden/terraform-aws-rds
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-rds&url=https://github.com/JamesWoolfenden/terraform-aws-rds
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-rds
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-rds
[share_email]: mailto:?subject=terraform-aws-rds&body=https://github.com/JamesWoolfenden/terraform-aws-rds
