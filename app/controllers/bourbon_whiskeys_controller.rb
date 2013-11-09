class BourbonWhiskeysController < ApplicationController
  # TODO: Sessions will have hated
  # TODO: Sessions will have disliked
  def index
    @bourbon = BourbonWhiskey.random
  end

	def edit
    
    redirect_to root_url
  end
end