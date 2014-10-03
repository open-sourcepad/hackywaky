require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require "sinatra/reloader" if development?
require 'oj'

get '/test' do
  Oj.dump(params)
end

post '/chuva' do
  Oj.dump(params)
end