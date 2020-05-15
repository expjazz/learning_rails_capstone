# frozen_string_literal: true

class InboxMessage < ApplicationRecord
  belongs_to :user
end
