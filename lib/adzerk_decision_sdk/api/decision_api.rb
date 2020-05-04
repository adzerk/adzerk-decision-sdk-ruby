=begin
#Adzerk Decision API

#Adzerk Decision API

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module AdzerkDecisionSdk
  class DecisionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Request Decision(s)
    # @param [Hash] opts the optional parameters
    # @option opts [DecisionRequest] :decision_request 
    # @return [DecisionResponse]
    def get_decisions(opts = {})
      data, _status_code, _headers = get_decisions_with_http_info(opts)
      data
    end

    # Request Decision(s)
    # @param [Hash] opts the optional parameters
    # @option opts [DecisionRequest] :decision_request 
    # @return [Array<(DecisionResponse, Integer, Hash)>] DecisionResponse data, response status code and response headers
    def get_decisions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DecisionApi.get_decisions ...'
      end
      # resource path
      local_var_path = '/api/v2'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'decision_request']) 

      # return_type
      return_type = opts[:return_type] || 'DecisionResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DecisionApi#get_decisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
