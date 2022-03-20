class ChangeProfileOptionsToUsers < ActiveRecord::Migration[6.1]
  def up
    change_culumn :users, :profile
  end
end
