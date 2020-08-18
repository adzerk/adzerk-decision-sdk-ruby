require 'uri'
require 'typhoeus'

module AdzerkDecisionSdk
  class PixelClient
    def initialize(api_client, logger)
      @api_client = api_client
      @logger = logger
    end

    def fire(url, revenue_override: nil, additional_revenue: nil, event_multiplier: nil)
      uri = URI(url)
      @logger.info("Firing Pixel at base url of: #{uri.to_s}")

      query_params = URI.decode_www_form(uri.query)
      query_params << ["override", revenue_override] if not revenue_override.nil?
      query_params << ["additional", additional_revenue] if not additional_revenue.nil?
      query_params << ["eventMultiplier", event_multiplier] if not event_multiplier.nil?
      uri.query = URI.encode_www_form(query_params)
      new_url = uri.to_s()

      @logger.info("After url building with overrides, requesting: #{new_url}")
      request = @api_client.build_request(:GET, '')
      request.base_url = new_url
      response = request.run()
      location = response.response_code == 302 ? response.headers['location'] : nil

      @logger.info("Received response from pixel url: #{response.response_code} with location: #{location}")
      [response.response_code, location]
    end
  end
end