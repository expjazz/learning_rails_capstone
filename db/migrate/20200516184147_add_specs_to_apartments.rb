# frozen_string_literal: true

class AddSpecsToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :city, :string
    add_column :apartments, :neighborhood, :string
    add_column :apartments, :bathrooms, :integer
    add_column :apartments, :pets, :boolean
    add_column :apartments, :size, :string
    add_column :apartments, :pool, :boolean
  end
end
