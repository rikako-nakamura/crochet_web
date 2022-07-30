Aws.config.update({
  region: 'ap-northeast-1',
  credentials: Aws::Credentials.new('xxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxx'),
})

S3_BUCKET = Aws::S3::Resource.new.bucket('xxxxxxxxxxxxxxxx')

require 'aws-sdk-s3'
require 'aws-sdk-dynamodb'

s3 = Aws::S3::Client.new
ddb = Aws::DynamoDB::Client.new