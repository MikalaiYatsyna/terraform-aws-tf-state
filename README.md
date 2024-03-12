## Introduction
Terraform module to provision S3 bucket and DynamoDB table for terraform state management.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_remote-state-s3-backend"></a> [remote-state-s3-backend](#module\_remote-state-s3-backend) | nozaq/remote-state-s3-backend/aws | 1.5.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tf_state_lock_table_name"></a> [tf\_state\_lock\_table\_name](#input\_tf\_state\_lock\_table\_name) | Name of DynamoDB table for state lock | `string` | `"tf_state_lock"` | no |
| <a name="input_tf_state_s3_bucket_name"></a> [tf\_state\_s3\_bucket\_name](#input\_tf\_state\_s3\_bucket\_name) | Name of S3 bucket where Terraform state will be stored | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
