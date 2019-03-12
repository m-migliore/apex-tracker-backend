class Api::V1::UsersController < ApplicationController
  before_action :find_user, only [:show, :update, :detroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors }, status: :unprocessible_entity
    end
  end

  def update
   @user.update(user_params)
   if @user.save
     render json: @user, status: :accepted
   else
     render json: { errors: @user.errors }, status: :unprocessible_entity
   end
  end

  def destroy
    @user.destroy
    render json: {status: "user deleted"}
  end

  private

  def user_params
    params.permit(:username)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
