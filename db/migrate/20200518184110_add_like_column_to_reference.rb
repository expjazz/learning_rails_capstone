# frozen_string_literal: true

class AddLikeColumnToReference < ActiveRecord::Migration[6.0]
  def change
    add_column :references, :like_id, :integer
  end
end
