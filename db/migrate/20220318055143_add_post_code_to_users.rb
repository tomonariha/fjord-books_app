class AddPostCodeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :post_code, :integer(7)
  end
end
