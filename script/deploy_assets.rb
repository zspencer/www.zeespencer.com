require 's3deployer'
deployer = S3Deployer.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
deployer.deploy("#{Dir.pwd}/_site", 'zeespencer.com')
