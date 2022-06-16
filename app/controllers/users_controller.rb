class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index, :edit]

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def update_image
    @user = User.find(params[:id])
    redirect_to users_path(current_user) unless current_user.id == @user.id
    image = params[:user][:image] unless params[:user].nil?
    if image
      @user.image = image
      if @user.save
        flash[:success] = 'Image successfully uploaded!'
      else
        flash[:danger] = 'Image upload failed.'
      end
    end
    redirect_to root_path
  end
end
