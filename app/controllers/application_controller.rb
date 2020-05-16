# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :same_user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def same_user(id)
    unless current_user == User.find(id)
      flash[:alert] = 'This is not your page'
      redirect_to root_path
    end
  end

  def require_user
    unless logged_in?
      flash[:alert] = 'You need to log-in to perform this action'
      redirect_to login_path
    end
  end
end
