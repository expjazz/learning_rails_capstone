# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_user, only: %i[edit update destroy]
  def new
    @user = User.new
  end

  def show
    same_user(params[:id])
    @user = User.find(params[:id])
    @inbox = @user.inbox_messages
    @apartments = @user.apartments
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to Dream Homes'
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    same_user(params[:id])
    @user = User.find(params[:id])
  end

  def update
    same_user(params[:id])
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = 'Welcome to Dream Homes'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    require_user
    @user = current_user
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 3)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
