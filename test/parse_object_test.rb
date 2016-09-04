ENV['RACK_ENV'] ||= 'test'
$:.unshift(File.expand_path('../lib', File.dirname(__FILE__)))
Bundler.require(:default)

require 'faraday_middleware/parse_object'
require 'minitest/autorun'

class ParseObjectTest < Minitest::Test

  def test_parse
    connection = Faraday.new do |builder|
      builder.response :object, content_type: /\bjson$/
      builder.adapter :test do |stub|
        stub.get('/foo') { |env| [ 200, {'Content-Type': 'application/json'}, '{"a": 1, "b": "gaurish"}' ]}
      end
    end

    obj = connection.get('/foo').body
    assert_kind_of OpenStruct, obj
    assert_equal 1, obj.a
    assert_equal "gaurish", obj.b
  end
end
