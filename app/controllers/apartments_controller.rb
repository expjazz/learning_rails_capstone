# frozen_string_literal: true

class ApartmentsController < ApplicationController
  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apt_params)
    @apartment.user = User.first
    if @apartment.save
      flash[:notice] = 'Announce was created successfully'
      redirect_to @apartment
    else
      render 'new'
    end
  end

  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.new(apt_params)
    if @apartment.save
      flash[:notice] = 'Anounce was updated successfully'
      redirect_to @apartment
    else
      render 'edit'
    end
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect_to apartments_path
  end

  private

  def apt_params
    params.require(:apartment).permit(:adress, :price)
  end
end
