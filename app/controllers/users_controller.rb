class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    set_user
    @posts = Post.where(user_id: current_user.id).includes(:user).order("created_at DESC").page(params[:page]).per(4)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def edit;end

  private

  def set_user
    @user = User.find_by(public_uid: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :public_uid)
  end

end
