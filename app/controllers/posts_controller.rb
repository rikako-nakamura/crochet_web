class PostsController < ApplicationController
  before_action :login_required, only: %i[new create edit]

  def index
    @posts = Post.all
    @search_posts_form = SearchPostsForm.new(search_params)
    @posts = @search_posts_form.search.order(id: :desc).page(params[:page]).per(4)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @moods = Mood.all
    @categories = Category.all
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @moods = Mood.all
    @categories = Category.all
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post_path(post), success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path, info: t('.info') 
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
