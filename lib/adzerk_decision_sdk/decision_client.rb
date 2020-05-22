require 'adzerk_decision_sdk/api/decision_api'

module AdzerkDecisionSdk
  class DecisionClient
    def initialize(network_id, site_id, api_client, logger)
      @network_id = network_id
      @site_id = site_id
      @api = DecisionApi.new(api_client)
      @logger = logger
    end

    def get(request, opts = {})
      opts ||= {}
      header_params = opts[:header_params] || {}
      opts[:body] ||= request.respond_to?('to_hash') ? request.to_hash() : request

      @logger.info("Processing request: #{opts[:body]}")

      opts[:body][:enableBotFiltering] = false if not opts[:body].has_key?(:enableBotFiltering)

      if !opts[:body].has_key?(:placements) or !opts[:body][:placements] or !opts[:body][:placements].length() == 0
        fail ArgumentError, "Each request requires at least one placement"
      end

      opts[:body][:placements].each_with_index do |placement, idx|
        if !placement.has_key?(:adTypes) or !placements[:adTypes] or placement[:adTypes].length() == 0
          fail ArgumentError, "Each placement needs at least one ad type"
        end
        placement[:networkId] = @network_id if not placement.has_key?(:networkId)
        placement[:siteId] = @site_id if not placement.has_key?(:siteId)
        placement[:divName] = "div#{idx}" if not placement.has_key?(:divName)
      end

      header_params['User-Agent'] = opts[:user_agent] if opts.has_key?(:user_agent)

      if opts.has_key?(:include_explanation) and opts[:include_explanation] == true
        header_params['X-Adzerk-Explain'] = opts[:api_key]
        @logger.info("--------------------------------------------------------------")
        @logger.info("              !!! WARNING - WARNING - WARNING !!!             ")
        @logger.info("")
        @logger.info("You have opted to include explainer details with this request!")
        @logger.info("This will cause performance degradation and should not be done")
        @logger.info("in production environments.")
        @logger.info("--------------------------------------------------------------")
      end

      opts[:header_params] = header_params

      @logger.info("Processed request: #{opts[:body]}")
      @logger.info("Requesting with headers: #{opts[:header_params]}")

      response = @api.get_decisions(opts)

      parsed_response = parse_response(response)
      @logger.info("Recieved response: #{parsed_response}")

      return parsed_response
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