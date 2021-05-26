# Adzerk Ruby Decision SDK

Ruby Software Development Kit for Adzerk Decision & UserDB APIs

## Installation

Requires [Ruby 2.5](https://en.wikipedia.org/wiki/Ruby_(programming_language)#Table_of_versions) or higher.

[RubyGem Package](https://rubygems.org/gems/adzerk_decision_sdk)

```shell
gem install adzerk_decision_sdk
```

Or add to your `Gemfile`:

```ruby
gem 'adzerk_decision_sdk', '~> 1.0.0-pre.beta.2'
```

## Examples

### API Credentials & Required IDs

- Network ID: Log into [Adzerk UI](https://app.adzerk.com/) & use the "circle-i" help menu in upper right corner to find Network ID. Required for all SDK operations.
- Site ID: Go to [Manage Sites page](https://app.adzerk.com/#!/sites/) to find site IDs. Required when fetching an ad decision.
- Ad Type ID: Go to [Ad Sizes page](https://app.adzerk.com/#!/ad-sizes/) to find Ad Type IDs. Required when fetching an ad decision.
- API Key: Go to [API Keys page](https://app.adzerk.com/#!/api-keys/) find active API keys. Required when writing to UserDB.
- User Key: UserDB IDs are [specified or generated for each user](https://dev.adzerk.com/reference/userdb#passing-the-userkey).

### Fetching an Ad Decision

```ruby
require "adzerk_decision_sdk"

# Demo network, site, and ad type IDs; find your own via the Adzerk UI!
client = AdzerkDecisionSdk::Client.new(network_id: 23, site_id: 667480)

request = {
  placements: [{ adTypes: [5] }],
  user: { key: "abc" },
  keywords: ["keyword1", "keyword2"],
}

pp client.decisions.get(request)
```

### Recording Impression & Clicks

Use with the fetch ad example above.

```ruby
# Impression pixel; fire when user sees the ad
client.pixels.fire(decision.impression_url)

# Click pixel; fire when user clicks on the ad
# status: HTTP status code
# location: click target URL
status, location = client.pixels.fire(decision.click_url)
```

### UserDB: Reading User Record

```ruby
require "adzerk_decision_sdk"

# Demo network ID; find your own via the Adzerk UI!
client = AdzerkDecisionSdk::Client.new(network_id: 23)
pp client.user_db.read("abc")
```

### UserDB: Setting Custom Properties

```ruby
require "adzerk_decision_sdk"

# Demo network ID; find your own via the Adzerk UI!
client = AdzerkDecisionSdk::Client.new(network_id: 23)

props = {
  favoriteColor: "blue",
  favoriteNumber: 42,
  favoriteFoods: ["strawberries", "chocolate"],
}

client.user_db.set_custom_properties("abc", props)
```

### UserDB: Forgetting User Record

```ruby
require "adzerk_decision_sdk"

# Demo network ID and API key; find your own via the Adzerk UI!
client = AdzerkDecisionSdk::Client.new(network_id: 23, api_key: ENV["ADZERK_API_KEY"])
client.user_db.forget("abc")
```

### Decision Explainer

The Decision Explainer returns information on a Decision API request explaining why each candidate ad was or was not chosen. 

```ruby
require "adzerk_decision_sdk"

# Demo network, site, and ad type IDs; find your own via the Adzerk UI!
client = AdzerkDecisionSdk::Client.new(network_id: 23, site_id: 667480)

request = {
  placements: [{ adTypes: [5] }],
  user: { key: "abc" },
  keywords: ["keyword1", "keyword2"],
}

options = {
  include_explanation: true,
  api_key: ENV["ADZERK_API_KEY"]
}

pp client.decisions.get(request, options)
```

The response returns a decision object with placement, buckets, rtb logs, and result information.
``` json
{
  "div0": {
    "placement": {},
    "buckets": [],
    "rtb_log": [],
    "results": []
  }
}
```
The "placement" object represents a decision in which an ad may be served. A Explainer Request can have multiple placements in the request.
The "buckets" array contains channel and priority information.
The "rtb_logs" array contains information about Real Time Bidding.
The "results" array contains the list of candidate ads that did and did not serve, along with a brief explanation.

### Logging

Our logging implementation is meant to be flexible enough to fit into any common Ruby logging framework.

You can use the [logger](https://ruby-doc.org/stdlib-2.4.0/libdoc/logger/rdoc/Logger.html) utility to output messages. 

The messages have associated levels: unknown, fatal, error, warn, info, and debug.

The easiest way to integrate is to write a function that handles translating the data from the Adzerk SDK Logger into whatever logging framework you're using in the rest of your application:

```ruby
require "adzerk_decision_sdk"

logger.level("Message")

client = AdzerkDecisionSdk::Client.new(logger)
```

## Documentation

- [Adzerk API Documentation](https://dev.adzerk.com/reference)
- [Adzerk User & Developer Documentation](https://dev.adzerk.com/docs)

## Contributing

### Reporting Issues

- For bug fixes and improvements to this SDK please use Github to [open an issue](https://github.com/adzerk/adzerk-decision-sdk-ruby/issues) or send us a [pull request](https://github.com/adzerk/adzerk-decision-sdk-ruby/pulls).
- For questions or issues regarding Adzerk functionality, please [contact Adzerk support](https://adzerk.com/help/).

### Building

To install dependencies and run the builds associated with this SDK, please use:

```
bundler install
rake spec
gem build adzerk_decision_sdk.gemspec
```