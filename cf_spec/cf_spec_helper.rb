require 'bundler/setup'
require 'machete'
require 'machete/matchers'
require 'rspec/retry'

`mkdir -p log`
Machete.logger = Machete::Logger.new("log/integration.log")

RSpec.configure do |config|
  config.verbose_retry = true # show retry status in spec process
end
