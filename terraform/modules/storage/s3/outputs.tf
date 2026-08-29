output "bucket_names" {
  description = "Names of the s3 buckets"
  value       = aws_s3_bucket.bucket[*].bucket
}

output "bucket_arns" {
  description = "Arns of the s3 buckets"
  value       = aws_s3_bucket.bucket[*].arn
}