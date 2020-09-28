# terraform-aws-rds

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-rds/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-rds)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-rds.svg)](https://github.com/JamesWoolfenden/terraform-aws-rds/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module - creates an RDS instance.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing Terraform code:

```terraform
module "rds" {
  source            = "JamesWoolfenden/rds/aws"
  version           = "0.0.5"
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
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name                 | Description                                                     | Type     | Default                                                                                                | Required |
| -------------------- | --------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------ | :------: |
| common_tags          | This is to help you add tags to your cloud objects              | `map`    | n/a                                                                                                    |   yes    |
| db_subnet_group_name | The name of the subnet to use for the database                  | `string` | `"default"`                                                                                            |    no    |
| instance             | Map of all the variables                                        | `any`    | n/a                                                                                                    |   yes    |
| instance_password    | n/a                                                             | `string` | n/a                                                                                                    |   yes    |
| publicly_accessible  | To comply with security rules CKV_AWS_17 this defaults to false | `bool`   | `false`                                                                                                |    no    |
| rds_role             | The IAM ARN of the role for RDS monitoring                      | `string` | `""`                                                                                                   |    no    |
| storage_encrypted    | Encryption status                                               | `bool`   | `true`                                                                                                 |    no    |
| subnet_group         | n/a                                                             | `list`   | <pre>[<br> {<br> "description": "",<br> "name": "database-1",<br> "name_prefix": null<br> }<br>]</pre> |    no    |
| subnet_ids           | A list of Subnet ids                                            | `list`   | n/a                                                                                                    |   yes    |

## Outputs

| Name            | Description |
| --------------- | ----------- |
| db_subnet_group | n/a         |
| instance        | n/a         |

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

Copyright © 2019-2020 James Woolfenden

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
