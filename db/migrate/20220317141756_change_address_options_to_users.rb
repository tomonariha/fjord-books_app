# frozen_string_literal: true

class ChangeAdressOptionsToUsers < ActiveRecord::Migration[6.1]
  def up
    change_culumn :users, :address, :string, null: true, default: nil
  end

  def down
    change_culumn :users, :address, :string, null: true, default: nil
  end
end
