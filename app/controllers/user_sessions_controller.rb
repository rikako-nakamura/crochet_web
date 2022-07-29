class UserSessionsController < ApplicationController

  def new;end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, info: t('.info')
  end

  private

  def session_params
    params.permit(:email, :password)
  end
end
