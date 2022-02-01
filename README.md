[![Gem Version](https://badge.fury.io/rb/tryterra_api@2x.png)](https://badge.fury.io/rb/tryterra_api)

# TryterraApi


This an unoffical Ruby api wrapper for tryterra.co

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tryterra_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tryterra_api

## Usage

```ruby
client = TryTerra::Client.new(dev_id: ENV['DEV_ID'], x_api_key: ENV['API_KEY'])
auth_response = client.auth.authenticate_user(resource: 'fitbit', reference_id: '1234-5678' )
```

## WebHook

Webhooks validation is supported. Assuming your using Rails, you can do the following. 

```ruby
webhook = TryTerra::WebHook.new(key: ENV['TERRA_WEBHOOK_SECRET'], signature_header: request.headers['terra-signature'], data: request.body.read)
webhook.valid? => true
```


## Resources

This gem aims to map as close to the TryTerra Api as posible. Responses return ruby objects built on OpenStruct to make it easier to work with.

#### Auth

```
auth_response = client.auth.authenicate_user(resource: 'fitbit', reference_id: '1234-5678' ) => TryTerra::Auth

client.auth.deauthenticate_user(user_id: '123')
```

#### Subscriptions

```
client.subscriptions
```

#### User Info

```
client.user_info(user_id: 'abs')
```

#### Athlete

```
client.athlete(user_id: 'abs')
```

#### Activity

```
client.activity(user_id: 'abs', start_date: '2021-01-01')
```

#### Body

```
client.body(user_id: 'abs', start_date: '2021-01-01')
```

#### Daily

```
client.daily(user_id: 'abs', start_date: '2021-01-01')
```

#### Sleep

```
client.sleep(user_id: 'abs', start_date: '2021-01-01')
```

### Menstruation

```
client.menstruation(user_id: 'abs', start_date: '2021-01-01')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

You will need a TryTerra dev_id and api_key

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tryterra_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TryterraApi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tryterra_api/blob/master/CODE_OF_CONDUCT.md).
