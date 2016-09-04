require 'faraday_middleware/response_middleware'
require 'ostruct'
require 'json'

module FaradayMiddleware
  class ParseObject < ResponseMiddleware

    define_parser do |body|
      ::JSON.parse(body, object_class: OpenStruct) unless body.strip.empty?
    end

    VERSION = '0.1.0'
  end
end

Faraday::Response.register_middleware object: FaradayMiddleware::ParseObject
