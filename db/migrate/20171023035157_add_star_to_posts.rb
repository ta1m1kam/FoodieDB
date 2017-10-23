class AddStarToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :star, :integer
  end
end
