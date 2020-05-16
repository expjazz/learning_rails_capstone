# frozen_string_literal: true

class InboxMessagesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
  end

  def index
    @inbox = current_user.inbox_messages
  end

  def create
    @inbox_message = InboxMessage.new(params_inbox)
    @inbox_message.send_id = current_user.id
    @inbox_message.save
    user = User.find(params[:user_id])
    user.inbox_messages << @inbox_message
    redirect_to root_path
  end

  private

  def params_inbox
    params.require(:inbox_message).permit(:body)
  end
end
