# AdzerkDecisionSdk::DecisionApi

All URIs are relative to *https://e-23.adzerk.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_decisions**](DecisionApi.md#get_decisions) | **POST** /api/v2 | 



## get_decisions

> Response get_decisions(opts)



Request Decision(s)

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::DecisionApi.new
opts = {
  body: {"placements": [{ "divName": "header", "networkId": 23, "siteId": 667480, "adTypes": [5] }] } # Object | 
}

begin
  result = api_instance.get_decisions(opts)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling DecisionApi->get_decisions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | [optional] 

### Return type

[**Response**](Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

