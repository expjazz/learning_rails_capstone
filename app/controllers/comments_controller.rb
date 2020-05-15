# frozen_string_literal: true

class CommentsController < ApplicationController
  def new; end

  def create
    @comment = Comment.new(params.require(:comment).permit(:body))
    @comment.user = current_user
    @comment.apartment_id = params[:apartment_id]
    @comment.save
    redirect_to apartment_path(params[:apartment_id])
  end
end
