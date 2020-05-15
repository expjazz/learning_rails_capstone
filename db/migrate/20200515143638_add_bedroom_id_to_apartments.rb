# frozen_string_literal: true

class AddBedroomIdToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :bedroom_id, :integer
  end
end
