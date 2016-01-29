if Rails.env.production?

  require "refile/s3"

  aws = {
    access_key_id: "AKIAI2TYI3OF6KHB2PLA",
    secret_access_key: "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",
    region: "Frankfurt",
    bucket: "flatest",
  }
  Refile.cache = Refile::S3.new(prefix: "cache", **aws)
  Refile.store = Refile::S3.new(prefix: "store", **aws)

end
