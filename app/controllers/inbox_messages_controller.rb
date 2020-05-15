# frozen_string_literal: true

class InboxMessagesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
  end

  def index
    @inbox = current_user.inbox_messages
  end

  def create; end
end
