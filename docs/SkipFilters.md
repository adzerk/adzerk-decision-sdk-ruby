# AdzerkDecisionSdk::SkipFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **distance** | **Boolean** | Geodistance filter, which skips geodistance targeting if true. | [optional] |
| **facet** | **Boolean** | Facet targeting filter, which skips facet targeting if true. | [optional] |
| **geodistance** | **Boolean** | Geodistance filter, which skips geodistance targeting if true. | [optional] |
| **geolocation** | **Boolean** | Geolocation filter, which skips location targeting if true. | [optional] |
| **keyword** | **Boolean** | Keyword limit filter, which skips all (ad and/or flight) keyword targeting if true. | [optional] |
| **location** | **Boolean** | Geolocation filter, which skips location targeting if true. | [optional] |
| **placement_limit** | **Boolean** | Placement limit filter, where no advertiser placement limit if true. | [optional] |
| **site_zone** | **Boolean** | Site/zone limit filter, which skips site/zone targeting if true. | [optional] |

## Example

```ruby
require 'adzerk_decision_sdk'

instance = AdzerkDecisionSdk::SkipFilters.new(
  distance: null,
  facet: null,
  geodistance: null,
  geolocation: null,
  keyword: null,
  location: null,
  placement_limit: null,
  site_zone: null
)
```

