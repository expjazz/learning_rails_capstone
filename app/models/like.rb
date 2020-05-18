# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :apartment
  has_one :reference
end
