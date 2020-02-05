# AdzerkDecisionSdk::Decision

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ad_id** | **Integer** |  | [optional] 
**creative_id** | **Integer** |  | [optional] 
**flight_id** | **Integer** |  | [optional] 
**campaign_id** | **Integer** |  | [optional] 
**priority_id** | **Integer** |  | [optional] 
**click_url** | **String** |  | [optional] 
**contents** | [**Array&lt;Content&gt;**](Content.md) |  | [optional] 
**impression_url** | **String** |  | [optional] 
**events** | [**Array&lt;Event&gt;**](Event.md) |  | [optional] 
**pricing** | [**PricingData**](PricingData.md) |  | [optional] 

## Code Sample

```ruby
require 'AdzerkDecisionSdk'

instance = AdzerkDecisionSdk::Decision.new(ad_id: null,
                                 creative_id: null,
                                 flight_id: null,
                                 campaign_id: null,
                                 priority_id: null,
                                 click_url: null,
                                 contents: null,
                                 impression_url: null,
                                 events: null,
                                 pricing: null)
```


