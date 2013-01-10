CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: 'AKIAI7X2GMZHZM22NFTA',
    aws_secret_access_key: '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',
  }
  config.fog_directory = 'tim_occhipinti'
end