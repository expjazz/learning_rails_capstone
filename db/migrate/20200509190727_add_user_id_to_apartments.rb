# frozen_string_literal: true

class AddUserIdToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :user_id, :int
  end
end
