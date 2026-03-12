# AdzerkDecisionSdk::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The UserKey used for UserDB Targeting | [optional] |
| **group** | **Integer** | The assigned cohort for the User | [optional] |
| **segments** | **Array&lt;Integer&gt;** | Array of Segment Ids that will override any set on the UserDB record for the User | [optional] |

## Example

```ruby
require 'adzerk_decision_sdk'

instance = AdzerkDecisionSdk::User.new(
  key: null,
  group: null,
  segments: null
)
```

