# frozen_string_literal: true

class CreateBedrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :bedrooms do |t|
      t.boolean :one
      t.boolean :two
      t.boolean :three
      t.boolean :four
      t.boolean :five
      t.boolean :six
    end
  end
end
