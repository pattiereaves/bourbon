class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_user_exists

  def ensure_user_exists
    if session[:user]
      @user = User.find(session[:user])

      unless @user
        @user = User.create
        session[:user] = @user.id
      end
    else
      @user = User.create
      session[:user] = @user.id
    end
  end
end
