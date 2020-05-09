# frozen_string_literal: true

class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :adress
      t.integer :price
    end
  end
end
