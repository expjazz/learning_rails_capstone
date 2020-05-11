# frozen_string_literal: true

module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Realizing your Dream House'
    if page_title.empty?
      base_title
    else
      page_title + '|' + base_title
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end
