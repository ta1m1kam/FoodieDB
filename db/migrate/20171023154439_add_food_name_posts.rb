class AddFoodNamePosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :food_name, :string
  end
end
