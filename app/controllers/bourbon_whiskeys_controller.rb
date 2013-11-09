class BourbonWhiskeysController < ApplicationController
  # TODO: Sessions will have hated
  # TODO: Sessions will have disliked
  def index
    @bourbon = BourbonWhiskey.random(@user)
  end

	def like
    @bourbon = BourbonWhiskey.find(params[:id])

    # Loop through attributes
    @bourbon.bourbon_attributes.each do |a|
      # Does like exist?
      @like = @user.likes.where(bourbon_attribute: a).first

      # If so, show it some love
      if @like
        @like.update_attributes is_loved: true
        # @like.save
      else
        # Else create a like
        @user.likes.create bourbon_attribute: a
      end
    end

    redirect_to root_url
  end

  def hate
    # @user.hate(params[:id])
    redirect_to root_url
  end
end