require "spec_helper"

describe ApplicationController do
  it "Displays a home page" do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Welcome to the greatest recipe page!")
    expect(last_response.body).to include("Login")
  end
end
