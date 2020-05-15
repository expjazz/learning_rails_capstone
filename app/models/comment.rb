# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :apartment
  belongs_to :user
end
