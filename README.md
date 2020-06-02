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
client = AdzerkDecisionSdk::Client.new(network_id: 23, api_key: "YOUR_API_KEY")
client.user_db.forget("abc")
```

<!-- ### Logging Example

TBD: ....... -->

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