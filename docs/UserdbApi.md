# AdzerkDecisionSdk::UserdbApi

All URIs are relative to *https://e-23.adzerk.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_custom_properties**](UserdbApi.md#add_custom_properties) | **POST** /udb/{networkId}/custom | 
[**add_interests**](UserdbApi.md#add_interests) | **GET** /udb/{networkId}/interest/i.gif | 
[**add_retargeting_segment**](UserdbApi.md#add_retargeting_segment) | **GET** /udb/{networkId}/rt/{advertiserId}/{retargetingSegmentId}/i.gif | 
[**forget**](UserdbApi.md#forget) | **DELETE** /udb/{networkId} | 
[**gdpr_consent**](UserdbApi.md#gdpr_consent) | **POST** /udb/{networkId}/consent | 
[**ip_override**](UserdbApi.md#ip_override) | **GET** /udb/{networkId}/ip/i.gif | 
[**match_user**](UserdbApi.md#match_user) | **GET** /udb/{networkId}/sync/i.gif | 
[**opt_out**](UserdbApi.md#opt_out) | **GET** /udb/{networkId}/optout/i.gif | 
[**read**](UserdbApi.md#read) | **GET** /udb/{networkId}/read | 
[**set_user_cookie**](UserdbApi.md#set_user_cookie) | **GET** /udb/{networkId}/set/i.gif | 



## add_custom_properties

> add_custom_properties(azk, network_id, opts)



Add Custom Properties to a User

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'
# setup authorization
AdzerkDecisionSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-Adzerk-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Adzerk-ApiKey'] = 'Bearer'
end

api_instance = AdzerkDecisionSdk::UserdbApi.new
azk = 'azk_example' # String | The User's UserDB Key
network_id = 56 # Integer | Your Network Id
opts = {
  body: nil # Object | 
}

begin
  api_instance.add_custom_properties(azk, network_id, opts)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->add_custom_properties: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **azk** | **String**| The User&#39;s UserDB Key | 
 **network_id** | **Integer**| Your Network Id | 
 **body** | **Object**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## add_interests

> add_interests(network_id, user_key, interest)



Add Interests to a User

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key
interest = 'interest_example' # String | Comma Seperated list of interests

begin
  api_instance.add_interests(network_id, user_key, interest)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->add_interests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **Integer**| Your Network Id | 
 **user_key** | **String**| The User&#39;s UserDB Key | 
 **interest** | **String**| Comma Seperated list of interests | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## add_retargeting_segment

> add_retargeting_segment(azk, network_id, advertiser_id, retargeting_segment_id)



Add User to a Retargeting Segment

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
azk = 'azk_example' # String | The User's UserDB Key
network_id = 56 # Integer | Your Network Id
advertiser_id = 56 # Integer | The Advertiser's ID
retargeting_segment_id = 56 # Integer | The Segment's ID

begin
  api_instance.add_retargeting_segment(azk, network_id, advertiser_id, retargeting_segment_id)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->add_retargeting_segment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **azk** | **String**| The User&#39;s UserDB Key | 
 **network_id** | **Integer**| Your Network Id | 
 **advertiser_id** | **Integer**| The Advertiser&#39;s ID | 
 **retargeting_segment_id** | **Integer**| The Segment&#39;s ID | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## forget

> forget(network_id, user_key)



Forget User

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'
# setup authorization
AdzerkDecisionSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-Adzerk-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Adzerk-ApiKey'] = 'Bearer'
end

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key

begin
  api_instance.forget(network_id, user_key)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->forget: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **Integer**| Your Network Id | 
 **user_key** | **String**| The User&#39;s UserDB Key | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## gdpr_consent

> gdpr_consent(network_id, opts)



GDPR Consent

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'
# setup authorization
AdzerkDecisionSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-Adzerk-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Adzerk-ApiKey'] = 'Bearer'
end

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
opts = {
  gdpr_consent: AdzerkDecisionSdk::GdprConsent.new # GdprConsent | 
}

begin
  api_instance.gdpr_consent(network_id, opts)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->gdpr_consent: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **Integer**| Your Network Id | 
 **gdpr_consent** | [**GdprConsent**](GdprConsent.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## ip_override

> Object ip_override(network_id, azk, ip)



IP Address Override

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
azk = 'azk_example' # String | The User's UserDB Key
ip = 'ip_example' # String | This is the IP to exclude

begin
  result = api_instance.ip_override(network_id, azk, ip)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->ip_override: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **Integer**| Your Network Id | 
 **azk** | **String**| The User&#39;s UserDB Key | 
 **ip** | **String**| This is the IP to exclude | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## match_user

> match_user(azk, network_id, partner_id, user_id)



User Matching

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
azk = 'azk_example' # String | The User's UserDB Key
network_id = 56 # Integer | Your Network Id
partner_id = 56 # Integer | The ID of the RTB provider in Adzerk. Contact Support if you don't have the ID.
user_id = 56 # Integer | This is the UserID the individual RTB provider has of the user. This is NOT the UserDB userkey.

begin
  api_instance.match_user(azk, network_id, partner_id, user_id)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->match_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **azk** | **String**| The User&#39;s UserDB Key | 
 **network_id** | **Integer**| Your Network Id | 
 **partner_id** | **Integer**| The ID of the RTB provider in Adzerk. Contact Support if you don&#39;t have the ID. | 
 **user_id** | **Integer**| This is the UserID the individual RTB provider has of the user. This is NOT the UserDB userkey. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## opt_out

> opt_out(azk, network_id)



Opt-Out a User

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
azk = 'azk_example' # String | The User's UserDB Key
network_id = 56 # Integer | Your Network Id

begin
  api_instance.opt_out(azk, network_id)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->opt_out: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **azk** | **String**| The User&#39;s UserDB Key | 
 **network_id** | **Integer**| Your Network Id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## read

> Object read(azk, network_id)



Read a User's UserDB Record

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
azk = 'azk_example' # String | The User's UserDB Key
network_id = 56 # Integer | Your Network Id

begin
  result = api_instance.read(azk, network_id)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **azk** | **String**| The User&#39;s UserDB Key | 
 **network_id** | **Integer**| Your Network Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_user_cookie

> set_user_cookie(network_id, user_key)



Set User Cookie

### Example

```ruby
# load the gem
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | UserDB Id for the user

begin
  api_instance.set_user_cookie(network_id, user_key)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Exception when calling UserdbApi->set_user_cookie: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **Integer**| Your Network Id | 
 **user_key** | **String**| UserDB Id for the user | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

