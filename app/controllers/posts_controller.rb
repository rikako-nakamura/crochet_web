class PostsController < ApplicationController
  before_action :login_required

  def index
    @posts = Post.all
  end

  def show;end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to @post, notice: "投稿しました！"
    else
      render :new
    end
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:body, :category_id, :mood_id, :post_image, :post_image_cache, :finished_at)
  end
end
