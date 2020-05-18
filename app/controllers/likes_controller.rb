# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    byebug
    like = Like.new(sent_id: current_user.id, apartment_id: params[:apt_id])
    ref = Reference.new
    if !params[:love_count].nil?
      ref.love_count = 1
    elsif !params[:like_count].nil?
      ref.like_count = 1
    elsif !params[:dislike].nil?
      ref.dislike_count = 1
    end
    like.reference = ref
    apt = Apartment.find(params[:apt_id])
    apt.likes << like
  end
end
