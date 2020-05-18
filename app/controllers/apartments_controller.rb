# frozen_string_literal: true

class ApartmentsController < ApplicationController
  before_action :require_user, except: %i[show index]
  def new
    @apartment = Apartment.new
  end

  def create
    byebug
    @apartment = Apartment.new(apt_params)
    @apartment.images.attach(params[:apartment][:images])
    bedroom = Bedroom.find_by(params[:bedroom][:number])
    bedroom.apartments << @apartment
    @apartment.user = current_user
    if @apartment.save
      flash[:notice] = 'Announce was created successfully'
      redirect_to @apartment
    else
      render 'new'
    end
  end

  def index
    @apartments = Apartment.paginate(page: params[:page], per_page: 5)
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.new(apt_params)
    if @apartment.update
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
    params.require(:apartment).permit(:adress, :price, :images,
                                      :size, :pets, :pool, :city, :bathrooms,
                                      :neighborhood, tag_ids: [])
  end
end
