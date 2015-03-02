class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :gon_initialize

  include SessionsHelper

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to login_url, notice: 'ログインしてください。'
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path unless current_user?(@user)
  end

  def gon_initialize
    gon.available_tags = Binder.tags_on(:tags).pluck(:name)
  end
end
