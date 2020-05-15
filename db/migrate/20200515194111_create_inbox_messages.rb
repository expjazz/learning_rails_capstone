# frozen_string_literal: true

class CreateInboxMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :inbox_messages do |t|
      t.string :body
      t.integer :user_id
      t.timestamps
    end
  end
end
