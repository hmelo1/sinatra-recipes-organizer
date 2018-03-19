class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.string :user_id
      t.text :instructions
    end
  end
end
