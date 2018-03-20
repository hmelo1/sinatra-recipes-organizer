class UserController < ApplicationController
  get '/signup' do
    if logged_in?
      redirect '/recipes'
    else
      erb :'/users/signup'
    end
  end

  post '/signup' do
    if User.find_by(username: params[:username])
      #flash username taken
      redirect '/signup'
    else
      @user = User.create(params)
      session[:user_id] = @user.id
      redirect to "/#{@user.slug}"
    end
  end

end
