require 'rubygems'

require File.dirname(__FILE__) + '/../dumbapp/hi'
require 'test/unit'
require 'rack/test'


ENV['RACK_ENV'] = 'test'

class HiTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_whut
    get '/'
    assert last_response.ok?
    assert_equal "whut?", last_response.body
  end

  def test_it_says_hello_to_a_person
    name = "Simon"
    get "/hello/#{name}"
    assert last_response.ok?
    assert last_response.body.include?(name)
  end
end
