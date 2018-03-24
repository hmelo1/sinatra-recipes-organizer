class UserController < ApplicationController
  get '/signup' do
    if logged_in?
      redirect '/recipes'
    else
      @page = "signup"
      erb :'/users/signup'
    end
  end

  post '/signup' do
    if User.find_by(username: params[:username])
      flash[:failure] = "Username is taken, please try again."
      redirect '/signup'
    elsif params[:username].length < 8
      flash[:failure] = "Username Must be 8 characters or more"
      redirect '/signup'
    elsif params[:password].length < 8
      flash[:failure] = "Password Must be 8 characters or more"
      redirect '/signup'
    elsif params[:password] != params[:confirm_password]
      flash[:failure] = "Passwords do not match"
      redirect '/signup'
    else
      @user = User.create(username: params[:username], password: params[:password])
      session[:user_id] = @user.id
      redirect to "/#{@user.slug}"
    end
  end


    get '/login' do
      if logged_in?
        redirect to '/recipes'
      else
        @page = "login"
        erb :'/users/login'
      end
    end

    post '/login' do
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect "/users/#{@user.slug}"
      else
        flash[:failure] = "Unable to Authenticate Username and Password. Please Try Again."
        redirect '/login'
      end
    end


  get '/logout' do
    if logged_in?
      session.destroy
      redirect '/'
    else
      redirect '/'
    end
  end

  get '/users/:slug' do
    if logged_in?
      @user = User.find(session[:user_id])
      @recipes = Recipe.where(user_id: @user.id)
      @page = "users"
      erb :'/users/show'
    else
      redirect '/login'
    end
  end

end
