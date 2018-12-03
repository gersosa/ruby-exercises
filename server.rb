require 'bundler'
Bundler.require
require 'json'
require './items'
require 'sinatra/base'
require 'sinatra/param'

get '/items.json' do
  content_type :json
  status 200
  headers \
    "Allow"   => "GET"
  body simple_list.to_json
end

get '/items/:id.json' do
  param :id,           Integer, required: true
    puts 'I am before the raise.'  
  "Hello #{params[:id]}!"
  simple_list
  # content_type :json
  # status 200
  # headers \
  #   "Allow"   => "GET"
  # body items.to_json
end

post '/items.json' do
  'This is POST'
end

put '/items/:id.json' do
  'This is PUT'
end

get '/cart/:username.json' do
  'This is GET'
end

put '/cart/:username.json' do
  'This is PUT'
end

delete '/cart/:username/:item_id.json' do
  'This is DELETE'
end
