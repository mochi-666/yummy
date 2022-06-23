class Public::UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to my_page_path(@user.id)
    else
      render :edit
    end
  end

  def create
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理を実行しました"
    redirect_to root_path
  end

  private

  def user_params
     params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :nickname, :email, :is_active)
  end

end
