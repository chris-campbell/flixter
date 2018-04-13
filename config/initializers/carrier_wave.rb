require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  
  # config.permissions = 0666
  # config.directory_permissions = 0777
  # config.storage = :file
  
  config.storage    = :aws
  config.aws_bucket = ENV["AWS_BUCKET"]
  config.aws_acl    = "public-read"

  config.aws_credentials = {
      access_key_id:     ENV["AWS_ACCESS_KEY"],
      secret_access_key: ENV["AWS_SECRET_KEY"],
      region:            ENV["AWS_REGION"]
  }
end
