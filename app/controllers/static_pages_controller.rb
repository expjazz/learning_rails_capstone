# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @apartments_list = Apartment.all
  end

  def help; end

  def about; end

  def search; end

  def contact; end
end
