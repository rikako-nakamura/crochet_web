class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:body, :category_id, :mood_id, :post_image, :post_image_cache, :finished_at)
  end
end
