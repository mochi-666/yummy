class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @name = @user.first_name + @user.last_name
    @name_kana = @user.first_name_kana + @user.last_name_kana
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_user_path
  end

  private

  def user_params
     params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :nickname, :email, :is_active)
  end

end
