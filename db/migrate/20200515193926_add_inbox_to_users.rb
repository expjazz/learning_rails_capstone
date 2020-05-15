# frozen_string_literal: true

class AddInboxToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :inbox, :string
  end
end
