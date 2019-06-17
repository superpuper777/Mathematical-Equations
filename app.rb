require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'haml'

set :public_folder, 'public'

get '/' do
  haml :index
end

get '/index' do
  "Hello World"
end
