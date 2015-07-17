require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  
  get '/' do
    erb :index
  end
  post '/answer' do 
    @user_input = params[:user_input]
    @result = compute(@user_input)
    erb :answer 
  end
end