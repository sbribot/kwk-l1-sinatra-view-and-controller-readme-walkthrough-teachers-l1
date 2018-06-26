require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    user_input = params["string"]
    @reverse_string = user_input.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Chen", "SB", "Ilana", "Dylan"]
    erb :friends
  end
end
