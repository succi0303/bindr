class SitemapsController < ApplicationController
  def show
    @binders = Binder.all

    respond_to do |format|
      format.xml
    end
  end
end
