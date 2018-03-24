class MastheadService
  #hash, img, subheading, heading
  @@pages = {
    "home" => {
      background_img: 'img/home-bg.jpeg',
      heading: "Nom Noms Recipes",
      subheading: "Delicious Recipes"
    },
    "signup" => {
      background_img: 'img/signup-bg.jpeg',
      heading: "Signup Page",
      subheading: "Welcome!"
    },
    "login" => {
      background_img: 'img/login-bg.jpeg',
      heading: "Login Page",
      subheading: "Welcome back!"
    },
    "recipes" => {
      background_img: 'img/recipes-bg.jpeg',
      heading: "All Receipes",
      subheading: "Pick What You Like!"
    },
    "users" => {
      background_img: 'img/users-bg.jpeg',
      heading: "All Your Receipes",
      subheading: "Remember These?"
    },
    "recipe" => {
      background_img: 'img/recipe-bg.jpeg',
      heading: "test",
      subheading: "test"
    },
    "edit" => {
      background_img: 'img/recipes-bg.jpeg',
      heading: "Edit Recipe",
      subheading: " "
    },
    "new" => {
      background_img: 'img/recipes-bg.jpeg',
      heading: "New Recipe",
      subheading: " "
    },
  }
attr_accessor :background_img, :heading, :subheading

  def self.for(page)
    obj = self.new
    obj.background_img = @@pages[page][:background_img]
    obj.heading = @@pages[page][:heading]
    obj.subheading = @@pages[page][:subheading]
    obj
  end

end
