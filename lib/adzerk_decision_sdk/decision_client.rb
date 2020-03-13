require 'adzerk_decision_sdk/api/decision_api'

module AdzerkDecisionSdk
  class DecisionClient
    def initialize(api_client)
      @api = DecisionApi.new(api_client)
    end

    def get(opts = {})
      response = @api.get_decisions(opts)

      response.keys.each do |k|
        response[k] = response[k].is_a?(Array) ?  response[k] : [response[k]]
      end

      response
    end

    def get_with_explanation(opts = {}, api_key)
      header_params = opts[:header_params] || {}
      header_params["X-Adzerk-Explain"] = api_key
      opts[:header_params] = header_params

      response = @api.get_decisions(opts)

      response.keys.each do |k|
        response[k] = response[k].is_a?(Array) ?  response[k] : [response[k]]
      end

      response
    end
  end
end