AssetSync.configure do |config|

  # AWS
  config.fog_provider = 'AWS'
  config.fog_directory = 'shaun-oconnor.com'
  config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.aws_secret_access_key ENV['AWS_SECRET_ACCESS_KEY']
  config.fog_region = 'eu-west-1'

  # Don't delete files from the store - change to delete to delete, keep to keep and ignore to upload new
  config.existing_remote_files = "keep"
  #
  # Automatically replace files with their equivalent gzip compressed version
  # config.gzip_compression = true
  #
  # Use the Rails generated 'manifest.yml' file to produce the list of files to
  # upload instead of searching the assets directory.
  config.manifest = false # toggle this to force upload of additional files.
  #
  # Fail silently.  Useful for environments such as Heroku
  # config.fail_silently = true
  # config.run_on_precompile = true
end
