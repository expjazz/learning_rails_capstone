# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :apartment_tags
  has_many :apartments, through: :apartment_tags
end
