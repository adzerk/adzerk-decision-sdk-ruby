require 'adzerk_decision_sdk/configuration'
require 'adzerk_decision_sdk/api_client'
require 'adzerk_decision_sdk/decision_client'
require 'adzerk_decision_sdk/user_db_client'
require 'adzerk_decision_sdk/pixel_client'

module AdzerkDecisionSdk
  class Client
    attr_reader :decisions
    attr_reader :user_db
    attr_reader :pixels

    def initialize(network_id:,
                   protocol: 'https',
                   host: nil,
                   path: nil,
                   api_key: nil,
                   user_agent: 'Adzerk Decision SDK',
                   logger: nil,
                   is_debug: false,
                   site_id: nil)
      version = Gem.loaded_specs['adzerk_decision_sdk'].version.to_s
      host ||= "e-#{network_id}.adzerk.net"

      configuration = Configuration.new
      configuration.scheme = protocol
      configuration.host = host
      configuration.api_key['ApiKeyAuth'] = api_key
      configuration.debugging = is_debug
      configuration.server_index = nil

      unless logger.nil?
        configuration.logger = logger
      end

      api_client = ApiClient.new(configuration)
      api_client.default_headers['X-Adzerk-Sdk-Version'] = "adzerk-decision-sdk-ruby:#{version}"
      if api_key
        api_client.default_headers['X-Adzerk-ApiKey'] = api_key
      end

      @decisions = DecisionClient.new(network_id, site_id, api_client, api_key, configuration.logger)
      @user_db = UserDbClient.new(network_id, api_client, configuration.logger)
      @pixels = PixelClient.new(api_client, configuration.logger)
    end
  end
end