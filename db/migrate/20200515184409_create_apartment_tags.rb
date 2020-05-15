# frozen_string_literal: true

class CreateApartmentTags < ActiveRecord::Migration[6.0]
  def change
    create_table :apartment_tags do |t|
      t.integer :apartment_id
      t.integer :tag_id
    end
  end
end
