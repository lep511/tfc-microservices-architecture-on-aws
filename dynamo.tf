# DynamoDB Table Configuration
resource "aws_dynamodb_table" "example" {
  name           = "workshop-table"
  billing_mode   = "PAY_PER_REQUEST"  # Or "PROVISIONED"
  hash_key       = "UserId"            # Partition key
  range_key      = "ItemId"            # Sort key (optional)

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "ItemId"
    type = "N"
  }

  # Tags for organization and cost tracking
  tags = {
    Environment = "dev"
    Project     = "workshop-terraform"
  }
}
