# AdzerkDecisionSdk::Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**placements** | [**Array&lt;Placement&gt;**](Placement.md) | One or more Placement objects | 
**user** | [**User**](User.md) |  | [optional] 
**keywords** | **Array&lt;String&gt;** | Keywords for keyword Targeting. Such as &#x60;\&quot;keywords\&quot;: [\&quot;foo\&quot;, \&quot;bar\&quot;, \&quot;baz\&quot;]&#x60;. | [optional] 
**url** | **String** | The current page URL | [optional] 
**referrer** | **String** | The referrer URL | [optional] 
**ip** | **String** | The IP address. Required for [Geo-Targeting](https://dev.adzerk.com/docs/geo-location) | [optional] 
**blocked_creatives** | **Array&lt;Integer&gt;** | Numeric creative ids to disregard for ad selection | [optional] 
**is_mobile** | **Boolean** | If true, only ads containing a single image will be returned | [optional] 
**include_pricing_data** | **Boolean** | If true, return pricing data for the decision in the response | [optional] 
**notrack** | **Boolean** | If true, only return ads that are set to honor Do Not Track | [optional] 
**enable_bot_filtering** | **Boolean** | If making a client-side request, set to true. Defaults to false to ensure a server isn&#39;t seen as a bot. See [here](https://dev.adzerk.com/docs/tracking-overview#section-bot-filtering) for more info | [optional] 
**enable_user_dbip** | **Boolean** | If true, override the IP address of the request with the IP address supplied on the UserKey. If no IP address is found on the UserKey, this will fall back to the IP address on the request. Requires UserDB | [optional] 
**consent** | [**RequestConsent**](RequestConsent.md) |  | [optional] 
**device_id** | **String** | RTB requests only - sets an Identifier for Advertisers (IFA or IDFA) | [optional] 

## Code Sample

```ruby
require 'AdzerkDecisionSdk'

instance = AdzerkDecisionSdk::Request.new(placements: null,
                                 user: null,
                                 keywords: null,
                                 url: null,
                                 referrer: null,
                                 ip: null,
                                 blocked_creatives: null,
                                 is_mobile: null,
                                 include_pricing_data: null,
                                 notrack: null,
                                 enable_bot_filtering: null,
                                 enable_user_dbip: null,
                                 consent: null,
                                 device_id: null)
```


