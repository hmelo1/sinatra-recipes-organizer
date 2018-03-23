class RecipeController < ApplicationController
  get '/recipes' do
    if logged_in?
      @user = User.find(session[:user_id])
    end
    @recipes = Recipe.all
    @page = "recipes"
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


    get '/recipes/:slug' do
      @recipe = Recipe.find_by_recipe_slug(params[:slug])
      if (session[:user_id] == @recipe.user_id.to_i) && @recipe.user_id != nil
        @user = User.find_by(id: @recipe.user_id)
        erb :'/recipes/show_edit_delete'
      else
        erb :'/recipes/show'
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

  get '/recipes/:slug/edit' do
    if logged_in?
      @recipe = Recipe.find_by_recipe_slug(params[:slug])
      @user = User.find_by(id: @recipe.user_id)

      erb :'/recipes/edit'
    else
      redirect to '/login'
    end
  end

  patch '/recipes/:slug/edit' do
    @recipe = Recipe.find_by_recipe_slug(params[:slug])
    if params[:title].length < 3 || params[:ingredients].length < 3 || params[:instructions].length < 3
      flash[:failure] = "Pleasemake sure entries aren't less than 3 characters"
      redirect to "/recipes/#{params[:slug]}/edit"
    else
      @recipe.update(title: params[:title], ingredients: params[:ingredients], instructions: params[:instructions])
      @user = User.find_by(id: @recipe.user_id)
      redirect to "/recipes"
    end
  end

  delete '/recipes/:slug/delete' do
    @user = User.find(session[:user_id])
    @recipe = Recipe.find_by_recipe_slug(params[:slug])
    if ((logged_in?) && (@recipe.user_id.to_i == session[:user_id]))
      @recipe.destroy
      redirect to "/#{@user.slug}"
    else
      redirect to "/#{@user.slug}"
    end
  end

end
