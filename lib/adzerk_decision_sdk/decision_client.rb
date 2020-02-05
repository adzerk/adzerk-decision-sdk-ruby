require 'adzerk_decision_sdk/api/decision_api'

module AdzerkDecisionSdk
  class DecisionClient
    def initialize(api_client)
      @api = DecisionApi.new(api_client)
    end

    def get(opts = {})
      @api.get_decisions(opts)
    end

    def get_with_explanation(opts = {}, api_key)
      header_params = opts[:header_params] || {}
      header_params["X-Adzerk-Explain"] = api_key
      opts[:header_params] = header_params

      @api.get_decisions(opts)
    end
  end
end