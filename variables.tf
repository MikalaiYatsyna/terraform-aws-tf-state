variable "tf_state_s3_bucket_name" {
  type        = string
  description = "Name of S3 bucket where Terraform state will be stored"
}

variable "tf_state_lock_table_name" {
  type        = string
  description = "Name of DynamoDB table for state lock"
  default     = "tf_state_lock"
}
