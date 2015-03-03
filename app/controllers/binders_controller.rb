class BindersController < ApplicationController
  before_action :signed_in_user, only: [:new]

  def index
    if params[:tag].nil?
      @title = '連載記事一覧'
      @rss_path = binders_path + '.rss'
      @binders = Binder.all.order('updated_at DESC').page params[:page]
    else
      @title = "タグ: #{params[:tag]} の連載記事一覧"
      @rss_path = binders_path + '.rss' + "?tag=#{params[:tag]}"
      @binders = Binder.tagged_with(params[:tag]).order('updated_at DESC').page params[:page]
    end

    respond_to do |format|
      format.html
      format.rss { render :layout => false}
    end
  end

  def show
    @binder = Binder.find(params[:id])
    @pages = @binder.pages

    @binder.view_count = @binder.view_count + 1
    @binder.record_timestamps = false
    @binder.save
  end

  def new
    @binder = Form::Binder.new(user: current_user)
  end

  def create
    @binder = Form::Binder.new(binder_params)
    @binder.user = current_user

    if @binder.save
      redirect_to binder_path(@binder), notice: '連載記事を登録しました。'
    else
      render 'new'
    end
  end

  def edit
    @binder = Form::Binder.find(params[:id])
  end

  def update
    @binder = Form::Binder.find(params[:id])

    if @binder.update_attributes(binder_params)
      redirect_to binder_path(@binder), notice: '連載記事を更新しました。'
    else
      render 'edit'
    end
  end

  def destroy
    @binder = Binder.find(params[:id])
    @binder.destroy
    redirect_to user_path(@binder.user), notice: '連載記事を削除しました。'
  end

  def search
    @queries = params[:q].split(/\s+/)
    @binders = Binder.all
    @queries.each do |query|
      @binders = @binders.where('title LIKE ? OR description LIKE ?', "%#{query}%", "%#{query}%")
    end
    @binders = @binders.order('updated_at DESC').page params[:page]

    @rss_path = search_binders_path + '.rss' + "?q=#{params[:q]}"

    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end

  private

  def binder_params
    params.require(:form_binder).permit(
      Form::Binder::REGISTARABLE_ATTRIBUTES +
      [pages_attributes: Form::Page::REGISTARABLE_ATTRIBUTES]
    )
  end

end
