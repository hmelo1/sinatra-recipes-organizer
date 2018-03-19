require 'spec_helper'

describe "User" do
  before do
    @user1 = User.create(username: "pholover69", password: "banhxeo")
    @user2 = User.create(username: "penguinsrock", password: "quack!")

    @recipe1 = Recipe.create(title: "Pho", ingredients: "Ginger, Beef Bones, Onions, Star Anise, Water, Noodles, Etc.", user_id: 1, instructions: "Stuff to make pho")
    @recipe2 = Recipe.create(title: "Mangu", ingredients: "Platanos", user_id: 2, instructions: "Mash it good")
    @recipe3 = Recipe.create(title: "Pork chops", ingredients: "Pork", user_id: 1, instructions: "Cook it good")
    @recipe4 = Recipe.create(title: "Fried Chicken", ingredients: "chicken", user_id: 2, instructions: "Fry it!")
  end

  it "can initialize a new user" do
    expect(@user1).to be_an_instance_of(User)
  end

  it "has a username" do
    expect(@user1.username?).to eq(true)
  end

  it "has many recipes" do
  expect(@user1.recipes).to include(@recipe1)
  expect(@user2.recipes).to include(@recipe4)
  end
end
