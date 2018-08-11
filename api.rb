require 'sinatra'
require 'active_hash'
require_relative 'lib/prefecture'

get '/prefectures' do
  Prefecture.all.map(&:attributes).to_json
end

get '/prefectures/:id' do
  Prefecture.find(params[:id]).attributes.to_json
end
