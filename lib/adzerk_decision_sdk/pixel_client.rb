require 'uri'
require 'typhoeus'

module AdzerkDecisionSdk
  class PixelClient
    def initialize(api_client)
      @api_client = api_client
    end

    def fire(url, revenue_override: nil, additional_revenue: nil)
      uri = URI(url)
      query_params = URI.decode_www_form(uri.query)
      query_params << ["override", revenue_override] if not revenue_override.nil?
      query_params << ["additional", additional_revenue] if not additional_revenue.nil?
      uri.query = URI.encode_www_form(query_params)
      new_url = uri.to_s()

      request = @api_client.build_request(:GET, '')
      request.base_url = new_url
      response = request.run()
      location = response.response_code == 301 ? reasponse.headers['location'] : nil

      [response.response_code, location]
    end
  end
end