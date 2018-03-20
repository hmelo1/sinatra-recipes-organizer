require 'spec_helper'

describe "Report" do
  before do
    @user1 = User.create(username: "pholover69", password: "banhxeo")
    @user2 = User.create(username: "penguinsrock", password: "quack!")

    @recipe1 = Recipe.create(title: "Pho", ingredients: "Ginger, Beef Bones, Onions, Star Anise, Water, Noodles, Etc.", user_id: 1, instructions: "Stuff to make pho")
    @recipe2 = Recipe.create(title: "Mangu", ingredients: "Platanos", user_id: 2, instructions: "Mash it good")
    @recipe3 = Recipe.create(title: "Pork chops", ingredients: "Pork", user_id: 1, instructions: "Cook it good")
    @recipe4 = Recipe.create(title: "Fried Chicken", ingredients: "chicken", user_id: 2, instructions: "Fry it!")
  end

  it "has a title" do
    expect(@recipe1.title).to eq ("Pho")
    expect(@recipe3.title).to eq("Pork chops")
  end

  it "has ingredients" do
    expect(@recipe2.ingredients).to eq ("Platanos")
    expect(@recipe4.ingredients).to eq("chicken")
  end

  it "has instructions" do
    expect(@recipe1.instructions).to eq("Stuff to make pho")
    expect(@recipe2.instructions).to eq("Mash it good")
  end
end
