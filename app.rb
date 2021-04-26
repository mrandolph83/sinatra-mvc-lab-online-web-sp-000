require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

get '/' do
  erb :user_input
end

post '/piglatinize' do
  words = params[:user_text]
  @user_input = PigLatinizer.new(words)
  erb :user_results
end


end