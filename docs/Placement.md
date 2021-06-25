# AdzerkDecisionSdk::Placement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **div_name** | **String** | A unique name for the placement defined by you | [optional] |
| **network_id** | **Integer** | The numeric network id | [optional] |
| **site_id** | **Integer** | The numeric site id | [optional] |
| **ad_types** | **Array&lt;Integer&gt;** | One or more integer ad types. More info [here](https://dev.adzerk.com/docs/ad-sizes) | [optional] |
| **zone_ids** | **Array&lt;Integer&gt;** | Zone IDs to use | [optional] |
| **campaign_id** | **Integer** | A numeric campaign id; if specified, only consider ads in that campaign | [optional] |
| **flight_id** | **Integer** | A numeric ad (flight-creative map) id; if specified, only serve that ad if possible | [optional] |
| **ad_id** | **Integer** | A numeric ad (flight-creative map) id; if specified, only serve that ad if possible | [optional] |
| **click_url** | **String** | The ad&#39;s click-through URL | [optional] |
| **properties** | **Object** | A map of key/value pairs used for [Custom Targeting](https://dev.adzerk.com/docs/custom-targeting) | [optional] |
| **event_ids** | **Array&lt;Integer&gt;** | An array of numeric event types. Requests tracking URLs for custom events. See here for [Event Tracking IDs](https://dev.adzerk.com/v1.0/docs/custom-event-tracking) | [optional] |
| **overrides** | **Object** | An object that overrides values for an advertiser, campaign, flight or ad. Used especially for header bidding | [optional] |
| **content_keys** | **Hash&lt;String, Integer&gt;** | A map of key/value pairs used with [ContentDB](https://dev.adzerk.com/docs/contentdb-1). The format is &#x60;\&quot;contentKeys\&quot;: {\&quot;schema\&quot;: \&quot;contentKey\&quot;}&#x60; | [optional] |
| **count** | **Integer** | (BETA) The number of ads to return per placement. Integer between 1 and 20 | [optional] |
| **proportionality** | **Boolean** | (BETA) If true, fills ads in a multi-winner placement in proportion to the flight&#39;s goals | [optional] |
| **ecpm_partition** | **String** | (BETA) The name of the eCPM Partition that should be used to source eCPM data for auctions | [optional] |
| **ecpm_partitions** | **Array&lt;String&gt;** | (BETA) The names of the eCPM Partitions that should be used to source eCPM data for auctions | [optional] |
| **event_multiplier** | **Integer** |  | [optional] |
| **skip_selection** | **Boolean** |  | [optional] |
| **ad_query** | **Object** |  | [optional] |
| **floor_price** | **Float** |  | [optional] |
| **floor_cpc** | **Float** |  | [optional] |

## Example

```ruby
require 'adzerk_decision_sdk'

instance = AdzerkDecisionSdk::Placement.new(
  div_name: null,
  network_id: null,
  site_id: null,
  ad_types: null,
  zone_ids: null,
  campaign_id: null,
  flight_id: null,
  ad_id: null,
  click_url: null,
  properties: null,
  event_ids: null,
  overrides: null,
  content_keys: null,
  count: null,
  proportionality: null,
  ecpm_partition: null,
  ecpm_partitions: null,
  event_multiplier: null,
  skip_selection: null,
  ad_query: null,
  floor_price: null,
  floor_cpc: null
)
```

