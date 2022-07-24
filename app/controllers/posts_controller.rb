class PostsController < ApplicationController
  before_action :login_required, only: %i[new create edit]

  def index
    @posts = Post.all
    @search_posts_form = SearchPostsForm.new(search_params)
    @posts = @search_posts_form.search.order(id: :desc).page(params[:page]).per(4)
  end

  def show;end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "投稿しました！"
    else
      render :new
    end
  end

  def edit
  end

  def favorites
    @favorite_posts = current_user.favorite_posts.includes(:user).order(created_at: :desc).page(params[:page]).per(4)
  end

  private

  def search_params
    params[:q]&.permit(:category_id, :mood_id)
  end

  def post_params
    params.require(:post).permit(:body, :category_id, :mood_id, :post_image, :post_image_cache, :finished_at).merge(user_id: current_user.id)
  end

end
