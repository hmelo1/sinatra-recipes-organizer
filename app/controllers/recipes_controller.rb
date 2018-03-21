class RecipeController < ApplicationController
  get '/recipes' do
      @recipes = Recipe.all
      erb :'/recipes/index'
  end

  get '/recipes/new' do
    if logged_in?
      @user = User.find(session[:user_id])
      erb :'/recipes/new'
    else
      flash[:failure] = "Please login to create a new recipe"
      redirect to '/login'
    end
  end

  post '/recipes' do
    if params[:title].length < 3 || params[:ingredients].empty? || params[:instructions].empty?
      flash[:failure] = "Please do not leave any entries empty"
      redirect to '/recipes/new'
    else
      @recipe = Recipe.create(title: params[:title], ingredients: params[:ingredients], instructions: params[:instructions], user_id: session[:user_id])
      redirect to "recipes/#{@recipe.recipe_slug}"
    end
  end

  get '/recipes/:slug' do
    @recipe = Recipe.find_by_recipe_slug(params[:slug])
    if (session[:user_id] == @recipe.user_id) && @recipe.user_id != nil
      erb :'/recipes/show_edit_delete'
    else
      erb :'/recipes/show'
    end
  end

  delete '/recipes/:slug/delete' do
    @user = User.find(session[:user_id])
    @recipe = Recipe.find_by_recipe_slug(params[:slug])
    if ((logged_in?) && (@recipe.user_id == session[:user_id]))
      @recipe.destroy
      redirect to "/#{@user.slug}"
    else
      redirect to "/#{@user.slug}"
    end
  end

end
