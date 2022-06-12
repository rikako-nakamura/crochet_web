class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    redirect_to posts_url, notice: "投稿しました！"
  end

  def edit
  end

  private

  def post_params
    params.permit(:body, :category_id, :mood_id)
  end
end
