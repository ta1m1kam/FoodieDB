class AddPictureToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :picture, :string
    remove_column :users, :image_name, :string
  end
end
