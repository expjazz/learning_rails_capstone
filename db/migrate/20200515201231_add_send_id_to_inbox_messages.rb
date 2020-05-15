# frozen_string_literal: true

class AddSendIdToInboxMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :inbox_messages, :send_id, :integer
  end
end
