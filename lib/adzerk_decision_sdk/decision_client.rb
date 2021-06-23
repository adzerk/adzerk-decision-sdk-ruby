require 'adzerk_decision_sdk/api/decision_api'

module AdzerkDecisionSdk
  class DecisionClient

    def initialize(network_id, site_id, api_client, logger)
      @network_id = network_id
      @site_id = site_id
      @api = DecisionApi.new(api_client)
      @logger = logger
      @deprecated_placement_fields = [[:ecpm_partition, 'ecpm_partitions']]
    end

    def get(request, opts = {})
      opts ||= {}
      header_params = opts[:header_params] || {}
      opts[:debug_body] ||= request.respond_to?('to_hash') ? request.to_hash() : request

      @logger.info("Processing request: #{opts[:debug_body]}")

      opts[:debug_body][:enableBotFiltering] = false if not opts[:debug_body].has_key?(:enableBotFiltering)

      if !opts[:debug_body].has_key?(:placements) or !opts[:debug_body][:placements] or opts[:debug_body][:placements].length() == 0
        fail ArgumentError, "Each request requires at least one placement"
      end

      opts[:debug_body][:placements].each_with_index do |placement, idx|
        if !placement.has_key?(:adTypes) or !placement[:adTypes] or placement[:adTypes].length() == 0
          fail ArgumentError, "Each placement needs at least one ad type"
        end

        @deprecated_placement_fields.each do |pair|
          deprecated_field, replacement = pair
          if placement.has_key?(deprecated_field) and !placement[deprecated_field].nil?
            @logger.warn("DEPRECATION WARNING: #{deprecated_field} has been deprecated. Please use #{replacement} instead.")
          end
        end

        placement[:networkId] = @network_id if not placement.has_key?(:networkId)
        placement[:siteId] = @site_id if not placement.has_key?(:siteId)
        placement[:divName] = "div#{idx}" if not placement.has_key?(:divName)
      end

      header_params['User-Agent'] = opts[:user_agent] if opts.has_key?(:user_agent)

      if opts.has_key?(:include_explanation) and opts[:include_explanation] == true
        header_params['X-Adzerk-Explain'] = opts[:api_key]
        @logger.warn("--------------------------------------------------------------")
        @logger.warn("              !!! WARNING - WARNING - WARNING !!!             ")
        @logger.warn("")
        @logger.warn("You have opted to include explainer details with this request!")
        @logger.warn("This will cause performance degradation and should not be done")
        @logger.warn("in production environments.")
        @logger.warn("--------------------------------------------------------------")
      end

      opts[:header_params] = header_params

      @logger.info("Processed request: #{opts[:debug_body]}")
      @logger.info("Requesting with headers: #{opts[:header_params]}")

      response = @api.get_decisions(opts)
      @logger.info("Received response: #{response}")

      parsed_response = parse_response(response)
      @logger.info("Parsed response: #{parsed_response}")

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