# frozen_string_literal: true

class ChangePostCodeToUsers < ActiveRecord::Migration[6.1]
  def change
    change_culumn :users, :post_code, :integer
  end
end
