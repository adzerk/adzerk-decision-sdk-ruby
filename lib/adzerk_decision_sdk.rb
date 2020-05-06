=begin
#Adzerk Decision API

#Adzerk Decision API

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'adzerk_decision_sdk/client'

# Common files
require 'adzerk_decision_sdk/api_client'
require 'adzerk_decision_sdk/api_error'
require 'adzerk_decision_sdk/version'
require 'adzerk_decision_sdk/configuration'

# Models
require 'adzerk_decision_sdk/models/consent_request'
require 'adzerk_decision_sdk/models/content'
require 'adzerk_decision_sdk/models/decision'
require 'adzerk_decision_sdk/models/decision_data'
require 'adzerk_decision_sdk/models/event'
require 'adzerk_decision_sdk/models/placement'
require 'adzerk_decision_sdk/models/pricing_data'
require 'adzerk_decision_sdk/models/decision_request'
require 'adzerk_decision_sdk/models/decision_response'
require 'adzerk_decision_sdk/models/user'

# APIs
require 'adzerk_decision_sdk/api/decision_api'
require 'adzerk_decision_sdk/api/userdb_api'

# require 'adzerk_decision_sdk/client_options'
# require 'adzerk_decision_sdk/client'

module AdzerkDecisionSdk
  class << self
    # Customize default settings for the SDK using block.
    #   AdzerkDecisionSdk.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
