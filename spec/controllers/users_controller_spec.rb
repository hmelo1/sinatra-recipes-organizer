require "spec_helper"

describe UserController do
  it 'shows all the reports submitted by the user' do
    user = User.create(username: "lokibob", password: "doggydog")
    @recipe3 = Recipe.create(title: "Pork chops", ingredients: "Pork", user_id: 1, instructions: "Cook it good")
    get "/#{user.slug}"

    expect(last_response.body).to include(recipe.title)
    expect(last_response.body).to include(recipe.ingredients)
    expect(last_response.body).to include(user.username)
  end

  describe "Signup Page" do

    it 'loads the signup page' do
      get '/signup'
      expect(last_response.status).to eq(200)
    end

    it 'signup directs user to user index' do
      params = {
        :username => "skittles123",
        :password => "rainbows"
      }
      post '/signup', params
      binding.pry
      expect(last_response.location).to include("/#{@user}")
    end

    it 'does not let a user sign up without a username' do
      params = {
        :username => "",
        :password => "rainbows"
      }
      post '/signup', params
      expect(last_response.location).to include('/signup')
    end

    it 'does not let a user sign up without a password' do
      params = {
        :username => "skittles123",
        :password => ""
      }
      post '/signup', params
      expect(last_response.location).to include('/signup')
    end

    it 'does not let a logged in user view the signup page' do
      user = User.create(:username => "skittles123", :password => "rainbows")
      params = {
        :username => "skittles123",
        :password => "rainbows"
      }
      post '/signup', params
      session = {}
      session[:user_id] = user.id
      get '/signup'
    end
  end
end
