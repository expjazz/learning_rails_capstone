# frozen_string_literal: true

class AddUserIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :user_id, :int
  end
end
