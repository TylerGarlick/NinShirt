CarrierWave.configure do |config|
	
	config.s3_access_key_id = "AKIAIT3A2EOQ3TVZS5PQ"
	config.s3_secret_access_key = "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"
  config.s3_bucket = "ninshirt"
	config.permissions = 0777
  config.storage = :s3
  #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  #config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end