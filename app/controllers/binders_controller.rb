class BindersController < ApplicationController
  before_action :signed_in_user, only: [:new]

  def index
    @binders = Binder.all.order('updated_at DESC')
  end

  def new
    @binder = Binder.new(user: current_user)
  end

  def edit
    @binder = Binder.find(params[:id])
  end
end
