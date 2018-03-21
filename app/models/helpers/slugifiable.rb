module Helpers
  module Slugify
    def slug
      username.parameterize
    end
    def recipe_slug
      title.parameterize
    end
  end

  module Findable
    def find_by_slug(slug)
      self.all.find{|item| item.slug == slug}
    end

    def find_by_recipe_slug(slug)
      self.all.find{|item| item.recipe_slug == slug}
    end
  end
end
