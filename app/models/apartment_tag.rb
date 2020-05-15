# frozen_string_literal: true

class ApartmentTag < ApplicationRecord
  belongs_to :apartment
  belongs_to :tag
end
