class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index, :edit]

  def show
    @user = User.find(params[:id])
  end

  def index
  end
end
