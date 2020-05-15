# frozen_string_literal: true

class Apartment < ApplicationRecord
  belongs_to :user
  belongs_to :bedroom
  has_many :comments, dependent: :destroy
  validates :adress, presence: true, length: { minimum: 10, maximum: 100 }
  validates :price, presence: true
end
