# frozen_string_literal: true

class AddLikesReferencesToReferences < ActiveRecord::Migration[6.0]
  def change
    add_column :references, :like_count, :integer
    add_column :references, :love_count, :integer
    add_column :references, :dislike_count, :integer
  end
end
