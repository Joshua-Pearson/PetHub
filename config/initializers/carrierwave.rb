CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['PETHUB_AWS_ACCESS_KEY_ID'], # required
    :aws_secret_access_key  => ENV['PETHUB_AWS_SECRET_ACCESS_KEY'], # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['PETHUB_AWS_DIRECTORY'] # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end