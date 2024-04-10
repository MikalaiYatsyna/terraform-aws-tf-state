## Introduction
Terraform module to provision S3 bucket and DynamoDB table for terraform state management.

<!-- BEGIN_TF_DOCS -->


## Prerequisites

The following IAM policy needs to be attached to the role that is assumed during the creation of module resources:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:CreateTable",
        "dynamodb:DescribeTable",
        "dynamodb:DescribeContinuousBackups",
        "dynamodb:DescribeTimeToLive",
        "dynamodb:ListTagsOfResource",
        "dynamodb:DeleteTable",
        "dynamodb:TagResource",
        "dynamodb:UpdateContinuousBackups"
      ],
      "Resource": "arn:aws:dynamodb:*:${AWS::AccountId}:table/*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "kms:ListAliases",
        "kms:TagResource",
        "kms:CreateKey",
        "kms:EnableKeyRotation",
        "kms:DescribeKey",
        "kms:GetKeyPolicy",
        "kms:GetKeyRotationStatus",
        "kms:ListResourceTags",
        "kms:ScheduleKeyDeletion",
        "kms:CreateAlias",
        "kms:DeleteAlias"
      ],
      "Resource": "*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "s3:CreateBucket",
        "s3:PutBucketPolicy",
        "s3:ListBucket",
        "s3:GetBucketPolicy",
        "s3:GetBucketAcl",
        "s3:GetBucketCors",
        "s3:GetBucketWebsite",
        "s3:GetBucketVersioning",
        "s3:GetAccelerateConfiguration",
        "s3:GetBucketRequestPayment",
        "s3:GetBucketLogging",
        "s3:GetLifecycleConfiguration",
        "s3:GetReplicationConfiguration",
        "s3:GetEncryptionConfiguration",
        "s3:GetBucketObjectLockConfiguration",
        "s3:GetBucketTagging",
        "s3:GetBucketPublicAccessBlock",
        "s3:PutEncryptionConfiguration",
        "s3:PutBucketVersioning",
        "s3:DeleteBucketPolicy",
        "s3:PutLifecycleConfiguration",
        "s3:PutBucketPublicAccessBlock",
        "s3:DeleteBucket",
        "s3:PutBucketTagging",
        "s3:PutBucketAcl",
        "s3:PutBucketOwnershipControls",
        "s3:GetBucketOwnershipControls"
      ],
      "Resource": "arn:aws:s3:::*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:ListPolicyVersions",
        "iam:CreatePolicyVersion",
        "iam:DeletePolicyVersion",
        "iam:DeletePolicy",
        "iam:CreatePolicy",
        "iam:TagPolicy"
      ],
      "Resource": "arn:aws:iam::${AWS::AccountId}:policy/*",
      "Effect": "Allow"
    }
  ]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.8.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.42.0 |
## Providers

No providers.
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_remote-state-s3-backend"></a> [remote-state-s3-backend](#module\_remote-state-s3-backend) | nozaq/remote-state-s3-backend/aws | 1.6.0 |
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
