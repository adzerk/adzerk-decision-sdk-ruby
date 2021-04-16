# AdzerkDecisionSdk::UserdbApi

All URIs are relative to *https://e-23.adzerk.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_custom_properties**](UserdbApi.md#add_custom_properties) | **POST** /udb/{networkId}/custom |  |
| [**add_interests**](UserdbApi.md#add_interests) | **GET** /udb/{networkId}/interest/i.gif |  |
| [**add_retargeting_segment**](UserdbApi.md#add_retargeting_segment) | **GET** /udb/{networkId}/rt/{advertiserId}/{retargetingSegmentId}/i.gif |  |
| [**forget**](UserdbApi.md#forget) | **DELETE** /udb/{networkId} |  |
| [**gdpr_consent**](UserdbApi.md#gdpr_consent) | **POST** /udb/{networkId}/consent |  |
| [**ip_override**](UserdbApi.md#ip_override) | **GET** /udb/{networkId}/ip/i.gif |  |
| [**match_user**](UserdbApi.md#match_user) | **GET** /udb/{networkId}/sync/i.gif |  |
| [**opt_out**](UserdbApi.md#opt_out) | **GET** /udb/{networkId}/optout/i.gif |  |
| [**read**](UserdbApi.md#read) | **GET** /udb/{networkId}/read |  |


## add_custom_properties

> File add_custom_properties(network_id, user_key, opts)



Add Custom Properties to a User

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'
# setup authorization
AdzerkDecisionSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key
opts = {
  body: Object # Object | 
}

begin
  
  result = api_instance.add_custom_properties(network_id, user_key, opts)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->add_custom_properties: #{e}"
end
```

#### Using the add_custom_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> add_custom_properties_with_http_info(network_id, user_key, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_custom_properties_with_http_info(network_id, user_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->add_custom_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |
| **body** | **Object** |  | [optional] |

### Return type

**File**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: image/gif


## add_interests

> File add_interests(network_id, user_key, interest)



Add Interests to a User

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key
interest = 'interest_example' # String | Comma Seperated list of interests

begin
  
  result = api_instance.add_interests(network_id, user_key, interest)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->add_interests: #{e}"
end
```

#### Using the add_interests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> add_interests_with_http_info(network_id, user_key, interest)

```ruby
begin
  
  data, status_code, headers = api_instance.add_interests_with_http_info(network_id, user_key, interest)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->add_interests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |
| **interest** | **String** | Comma Seperated list of interests |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/gif


## add_retargeting_segment

> File add_retargeting_segment(network_id, advertiser_id, retargeting_segment_id, user_key)



Add User to a Retargeting Segment

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
advertiser_id = 56 # Integer | The Advertiser's ID
retargeting_segment_id = 56 # Integer | The Segment's ID
user_key = 'user_key_example' # String | The User's UserDB Key

begin
  
  result = api_instance.add_retargeting_segment(network_id, advertiser_id, retargeting_segment_id, user_key)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->add_retargeting_segment: #{e}"
end
```

#### Using the add_retargeting_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> add_retargeting_segment_with_http_info(network_id, advertiser_id, retargeting_segment_id, user_key)

```ruby
begin
  
  data, status_code, headers = api_instance.add_retargeting_segment_with_http_info(network_id, advertiser_id, retargeting_segment_id, user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->add_retargeting_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **advertiser_id** | **Integer** | The Advertiser&#39;s ID |  |
| **retargeting_segment_id** | **Integer** | The Segment&#39;s ID |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/gif


## forget

> forget(network_id, user_key)



Forget User

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'
# setup authorization
AdzerkDecisionSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key

begin
  
  api_instance.forget(network_id, user_key)
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->forget: #{e}"
end
```

#### Using the forget_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> forget_with_http_info(network_id, user_key)

```ruby
begin
  
  data, status_code, headers = api_instance.forget_with_http_info(network_id, user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->forget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## gdpr_consent

> File gdpr_consent(network_id, opts)



GDPR Consent

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'
# setup authorization
AdzerkDecisionSdk.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
opts = {
  consent_request: AdzerkDecisionSdk::ConsentRequest.new # ConsentRequest | 
}

begin
  
  result = api_instance.gdpr_consent(network_id, opts)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->gdpr_consent: #{e}"
end
```

#### Using the gdpr_consent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> gdpr_consent_with_http_info(network_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.gdpr_consent_with_http_info(network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->gdpr_consent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **consent_request** | [**ConsentRequest**](ConsentRequest.md) |  | [optional] |

### Return type

**File**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: image/gif


## ip_override

> File ip_override(network_id, user_key, ip)



IP Address Override

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key
ip = 'ip_example' # String | This is the IP to exclude

begin
  
  result = api_instance.ip_override(network_id, user_key, ip)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->ip_override: #{e}"
end
```

#### Using the ip_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> ip_override_with_http_info(network_id, user_key, ip)

```ruby
begin
  
  data, status_code, headers = api_instance.ip_override_with_http_info(network_id, user_key, ip)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->ip_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |
| **ip** | **String** | This is the IP to exclude |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/gif


## match_user

> File match_user(network_id, user_key, partner_id, user_id)



User Matching

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key
partner_id = 56 # Integer | The ID of the RTB provider in Adzerk. Contact Support if you don't have the ID.
user_id = 56 # Integer | This is the UserID the individual RTB provider has of the user. This is NOT the UserDB userkey.

begin
  
  result = api_instance.match_user(network_id, user_key, partner_id, user_id)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->match_user: #{e}"
end
```

#### Using the match_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> match_user_with_http_info(network_id, user_key, partner_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.match_user_with_http_info(network_id, user_key, partner_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->match_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |
| **partner_id** | **Integer** | The ID of the RTB provider in Adzerk. Contact Support if you don&#39;t have the ID. |  |
| **user_id** | **Integer** | This is the UserID the individual RTB provider has of the user. This is NOT the UserDB userkey. |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/gif


## opt_out

> File opt_out(network_id, user_key)



Opt-Out a User

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key

begin
  
  result = api_instance.opt_out(network_id, user_key)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->opt_out: #{e}"
end
```

#### Using the opt_out_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> opt_out_with_http_info(network_id, user_key)

```ruby
begin
  
  data, status_code, headers = api_instance.opt_out_with_http_info(network_id, user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->opt_out_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/gif


## read

> Object read(network_id, user_key)



Read a User's UserDB Record

### Examples

```ruby
require 'time'
require 'adzerk_decision_sdk'

api_instance = AdzerkDecisionSdk::UserdbApi.new
network_id = 56 # Integer | Your Network Id
user_key = 'user_key_example' # String | The User's UserDB Key

begin
  
  result = api_instance.read(network_id, user_key)
  p result
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->read: #{e}"
end
```

#### Using the read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> read_with_http_info(network_id, user_key)

```ruby
begin
  
  data, status_code, headers = api_instance.read_with_http_info(network_id, user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue AdzerkDecisionSdk::ApiError => e
  puts "Error when calling UserdbApi->read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **Integer** | Your Network Id |  |
| **user_key** | **String** | The User&#39;s UserDB Key |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

