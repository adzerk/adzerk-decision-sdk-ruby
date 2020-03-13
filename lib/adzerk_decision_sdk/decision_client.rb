require 'adzerk_decision_sdk/api/decision_api'

module AdzerkDecisionSdk
  class DecisionClient
    def initialize(api_client)
      @api = DecisionApi.new(api_client)
    end

    def get(request, opts = {})
      opts[:body] ||= request.respond_to? 'to_hash' ? request.to_hash() : request
      response = @api.get_decisions(opts)

      response.decisions.keys.each do |k|
        response.decisions[k] = response.decisions[k].is_a?(Array) ?  response.decisions[k] : [response.decisions[k]]
      end

      response
    end

    def get_with_explanation(request, opts = {}, api_key)
      header_params = opts[:header_params] || {}
      header_params["X-Adzerk-Explain"] = api_key
      opts[:header_params] = header_params
      opts[:body] ||= request.respond_to? 'to_hash' ? request.to_hash() : request

      response = @api.get_decisions(opts)

      response.decisions.keys.each do |k|
        response.decisions[k] = response.decisions[k].is_a?(Array) ?  response.decisions[k] : [response.decisions[k]]
      end

      response
    end
  end
end