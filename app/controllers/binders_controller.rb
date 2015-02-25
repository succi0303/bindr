class BindersController < ApplicationController
  def index
    @binders = Binder.all.order('updated_at DESC')
  end
end
