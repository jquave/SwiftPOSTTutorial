#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'json'
get '/' do
  "Nothing to see here. Move along."
end
post '/login' do
  values = JSON.parse(request.env["rack.input"].read)
  if values["username"]=='jameson' && values["password"]=='password'
    "{\"success\":1}"
  else
    "{\"success\":0}"
  end
end
