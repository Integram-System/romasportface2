#if Rails.env.production?

require "refile/fog"

credentials = {
  provider: "aws",
  aws_access_key_id: "AKIAJ7YV3F2UDZXZDY3Q",
  aws_secret_access_key: "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",
  region: "eu-central-1",
  directory: "romasportfaceimages"
}

# credentials = {
#   provider: "aws",
#   aws_access_key_id: "AKIAI2TYI3OF6KHB2PLA",
#   aws_secret_access_key: "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",
#   region: "eu-central-1",
#   directory: "flatest"
# }

Refile.configure do |config|
  config.cache = Refile::Fog::Backend.new(prefix: "cache", **credentials)
  config.store = Refile::Fog::Backend.new(prefix: "store", **credentials)
end

#end
