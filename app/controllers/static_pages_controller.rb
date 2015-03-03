class StaticPagesController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
    @recent_binders = Binder.order('updated_at DESC').limit(10)
    @popular_binders = Binder.order('view_count DESC, updated_at DESC').limit(10)
  end
end
