require "spec_helper"

describe RecipeController do
  it "Displays the index page" do
    get '/recipes'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to include("Recipes")
      expect(last_response.body).to include("Login")
      expect(last_response.body).to include("Signup")
  end

end
