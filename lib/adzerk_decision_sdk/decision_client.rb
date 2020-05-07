require 'adzerk_decision_sdk/api/decision_api'

module AdzerkDecisionSdk
  class DecisionClient
    def initialize(network_id, site_id, api_client)
      @network_id = network_id
      @site_id = site_id
      @api = DecisionApi.new(api_client)
    end

    def get(request, opts = {})
      header_params = opts[:header_params] || {}
      opts[:body] ||= request.respond_to?('to_hash') ? request.to_hash() : request

      if opts[:body][:placements].length() == 0
        fail ArgumentError, "At least one placement is required for a Decision Request"
      end

      opts[:body][:placements].each_with_index do |placement, idx|
        placement[:networkId] = @network_id if not placement.has_key?(:networkId)
        placement[:siteId] = @site_id if not placement.has_key?(:siteId)
        placement[:divName] = "div#{idx}" if not placement.has_key?(:divName)
      end

      header_params['user-agent'] = opts[:user_agent] if opts.has_key?(:user_agent)
      header_params['X-Adzerk-Explain'] = opts[:api_key] if opts.has_key?(:include_explanation)

      response = @api.get_decisions(opts)

      parse_response(response)
    end

    private

    def parse_response(response)
      response.decisions.keys.each do |k|
        response.decisions[k] = response.decisions[k].is_a?(Array) ?  response.decisions[k] : [response.decisions[k]]
        response.decisions[k].each_with_index do |d, i|
          response.decisions[k][i] = AdzerkDecisionSdk::Decision.build_from_hash(d)
        end
      end

      response
    end
  end
end