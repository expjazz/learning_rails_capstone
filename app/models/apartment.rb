# frozen_string_literal: true

class Apartment < ApplicationRecord
  belongs_to :user
  belongs_to :bedroom
  has_many :comments, dependent: :destroy
  has_many :apartment_tags
  has_many :tags, through: :apartment_tags
  has_many_attached :images
  has_many :likes
  validates :adress, presence: true, length: { minimum: 10, maximum: 100 }
  validates :price, presence: true
end
