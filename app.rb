require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'haml'
require 'pry'

require './lib/equation'
require './lib/linear_equeation'

set :public_folder, 'public'

get '/' do
  haml :index
end


post '/' do
  @output= Equation.new(params).solving_equation
  json result: @output.to_s
end
# binding.pry
