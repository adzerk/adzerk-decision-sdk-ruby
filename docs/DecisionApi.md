# AdzerkDecisionSdk::DecisionApi

All URIs are relative to *https://e-23.adzerk.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_decisions**](DecisionApi.md#get_decisions) | **POST** /api/v2 |  |


## get_decisions

> <DecisionResponse> get_decisions(opts)



Request Decision(s)

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::DecisionApi.new
opts = {
  decision_request: AdzerkDecisionSdk::DecisionRequest.new({placements: [AdzerkDecisionSdk::Placement.new]}) # DecisionRequest | 
}

begin
  
  result = api_instance.get_decisions(opts)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling DecisionApi->get_decisions: #{e}"
end
```

#### Using the get_decisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DecisionResponse>, Integer, Hash)> get_decisions_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_decisions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DecisionResponse>
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling DecisionApi->get_decisions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **decision_request** | [**DecisionRequest**](DecisionRequest.md) |  | [optional] |

### Return type

[**DecisionResponse**](DecisionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

