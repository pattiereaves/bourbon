class BourbonWhiskeysController < ApplicationController
  # TODO: Sessions will have hated
  # TODO: Sessions will have disliked
  def index
    @bourbon = BourbonWhiskey.random
  end

	def like
    @user.likes.vote(params[:id])
    redirect_to root_url
  end

  def hate
    # @user.hate(params[:id])
    redirect_to root_url
  end
end