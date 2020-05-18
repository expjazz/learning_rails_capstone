# frozen_string_literal: true

class AddApartmentIdToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :apartment_id, :integer
  end
end
