# GeocoderSimple

[![Build Status](https://travis-ci.org/yuzoiwasaki/geocoder_simple.svg)](https://travis-ci.org/yuzoiwasaki/geocoder_simple)

GeocoderSimple is a yet another simple geocode getter. Once you create geocoder_simple instance, you can get various latitude/longitude only if you set new address.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geocoder_simple'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geocoder_simple

## Usage

```ruby
geocoder = GeocoderSimple.new("東京都墨田区押上１丁目１−２")
geocoder.address # => "東京都墨田区押上１丁目１−２"
geocoder.lng # => 139.8107155
geocoder.lat # => 35.7100327
geocoder.address = "東京都港区芝公園４丁目２−８"
geocoder.address # => "東京都港区芝公園４丁目２−８"
geocoder.lng # => 139.7454636
geocoder.lat # => 35.6585817
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yuzoiwasaki/geocoder_simple. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

