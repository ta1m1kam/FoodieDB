class AddAddressToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :address, :string
  end
end
