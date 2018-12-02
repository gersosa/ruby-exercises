require 'bundler'
Bundler.require
require 'json'


get '/items.json' do
  'This is GET items'
  content_type :json
  status 200
  headers \
    "Allow"   => "GET",
    "Refresh" => "Refresh: 20; https://ietf.org/rfc/rfc2324.txt"
  body "I'm a tea pot!"
  { :key1 => 'value1', :key2 => 'value2' }.to_json
  # halt 200
end

post '/' do
  'This is POST'
end

put '/' do
  'This is PUT'
end

patch '/' do
  'This is PATCH'
end

delete '/' do
  'This is DELETE'
end
