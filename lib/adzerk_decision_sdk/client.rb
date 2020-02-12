require 'adzerk_decision_sdk/configuration'
require 'adzerk_decision_sdk/api_client'
require 'adzerk_decision_sdk/decision_client'
require 'adzerk_decision_sdk/user_db_client'

module AdzerkDecisionSdk
  class Client
    attr_reader :decisions
    attr_reader :user_db

    def initialize(client_options)
      protocol = client_options.protocol || "https"
      host = client_options.host || "e-#{client_options.network_id}.adzerk.net"

      configuration = Configuration.new
      configuration.scheme = protocol
      configuration.host = host
      configuration.api_key = client_options.api_key

      api_client = ApiClient.new(configuration)

      @decisions = DecisionClient.new(api_client)
      @user_db = UserDbClient.new(api_client)
    end
  end
end