@user1 =   User.create(:username => "skittles123", :password => "rainbows")
@user2 = User.create(:username => "pholover", :password => "phobow123!")
@user3 = User.create(:username => "therock", :password => "dwayneJohnson")
@user4 = User.create(  :username => "lokidoggo", :password => "shibadoge")

@recipe1 = Recipe.create(:title => "Ham and Cheese", :ingredients => "Ham, Cheese, Bread, Mayonnaise", :user_id => "1", :instructions => "Slather the bread with mayonnaise, place the ham and cheese between the slices, enjoy!")
@recipe2 = Recipe.create(:title => "Peanut Butter and Jelly", :ingredients => "Peanut Butter, Bread, Jelly", :user_id => "1", :instructions => "Slather 1 side with peanut butter, slather the other side with jelly, enjoy!")
@recipe3 = Recipe.create(:title => "Banh mi", :ingredients => "Baguette, daikon, carrot, coirander, chili, roasted pork", :user_id => "2", :instructions => "Cut the baguette, put sliced daikon, carrot, coriander and chilli in the baguette. Place some of the pork in it and eat!")
@recipe4 = Recipe.create(:title => "Pho", :ingredients => "Beef bones, star anise, onion, ginger, salt, star anise, fish sauce, sirloin", :user_id => "2", :instructions => "Boil those bones, with the onions, star anise for 8 hours. Throw in the beef and veggies.")
@recipe5 = Recipe.create(:title => "Skittles", :ingredients => "Skittles", :user_id => "1", :instructions => "Buy them.")
@recipe6 = Recipe.create(:title => "Food", :ingredients => "Testing ingredients", :user_id => "2", :instructions => "Just some instructions")
