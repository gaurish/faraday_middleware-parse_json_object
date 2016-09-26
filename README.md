# FaradayMiddleware::ParseObject

A simple Faraday middleware that parses JSON responses as Object. It is identical to `FaradayMiddleware::ParseJson` from `faraday_middleware` gem except that it parses JSON as `OpenStruct` instead of `Hash`

## Installation

``` ruby
# Gemfile
gem 'faraday_middleware-parse_json_object', '~> 0.1.0'
```

or

``` bash
$ gem install faraday_middleware-parse_json_object
```

## Usage

The same as `FaradayMiddleware::ParseJson`:

``` ruby
require 'faraday_middleware/parse_object'

connection = Faraday.new do |builder|
  builder.response :object
  builder.adapter  Faraday.default_adapter
end

connection.get('http://example.com/some.json')
```

### Note

Supports only `faraday` versions `0.9` and higher.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
