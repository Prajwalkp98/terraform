resource "aws_dynamodb_table" "name" {
  name           = var.aws_dynamodb_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.hash_key
  attribute {
    name = var.hash_key
    type = "S"
  }
}