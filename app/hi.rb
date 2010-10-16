require 'rubygems'
require 'sinatra'

get '/' do
  "whut?"
end

get '/hi' do
  "And we're done!"
end


get '/bye' do
  "Over so soon?"
end


get '/hello/:name' do
    # matches "GET /hello/foo" and "GET /hello/bar"
    # params[:name] is 'foo' or 'bar'
    # check trick to make a computer talk
    "Hello #{params[:name]}!"
end
