require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    @session = session
    erb :index
  end
  
  post '/checkout' do
    @item = params[:item]
    erb :display
  end
end