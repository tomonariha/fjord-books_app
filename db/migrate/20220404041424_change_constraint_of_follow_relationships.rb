# frozen_string_literal: true

class ChangeConstraintOfFollowRelationships < ActiveRecord::Migration[6.1]
  def change
    change_column :follow_relationships, :follower_id, :integer, null: false
    change_column :follow_relationships, :followed_id, :integer, null: false
  end
end
