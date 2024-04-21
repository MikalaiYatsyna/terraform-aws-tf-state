module "remote-state-s3-backend" {
  source                      = "nozaq/remote-state-s3-backend/aws"
  version                     = "1.6.1"
  dynamodb_table_name         = var.tf_state_lock_table_name
  override_s3_bucket_name     = true
  s3_bucket_name              = var.tf_state_s3_bucket_name
  enable_replication          = false
  terraform_iam_policy_create = false
  tags = {
    ManagedBy = "Terraform"
  }

  providers = {
    aws         = aws
    aws.replica = aws
  }
}
