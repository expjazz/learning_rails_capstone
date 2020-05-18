# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :sent_id
      t.integer :user_id
      t.integer :reference

      t.timestamps
    end
  end
end
