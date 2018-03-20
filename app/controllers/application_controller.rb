require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :session_secret, "penguins"
    set :views, 'app/views'
    enable :sessions
    #register Sinatra::Flash
  end

  get '/' do
    if logged_in?
      @user = User.find(session[:user_id])
    end
    erb :index
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end
  
end
