# frozen_string_literal: true

class Apartment < ApplicationRecord
  validates :adress, presence: true, length: { minimum: 10, maximum: 100 }
  validates :price, presence: true
end
