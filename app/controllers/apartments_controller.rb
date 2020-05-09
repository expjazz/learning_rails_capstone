# frozen_string_literal: true

class ApartmentsController < ApplicationController
  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(user_params)
    redirect_to @apartment if @apartment.save
  end

  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  private

  def user_params
    params.require(:apartment).permit(:adress, :price)
  end
end
