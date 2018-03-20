class Recipe < ActiveRecord::Base
  include Helpers::Slugify
  extend Helpers::Findable

  belongs_to :user
end
