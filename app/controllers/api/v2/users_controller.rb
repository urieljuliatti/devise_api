# frozen_string_literal: true

class Api::V2::UsersController < ApplicationController
  before_action :authenticate_api_user!
  before_action :authorized?
  before_action :set_user, only: %i[show update destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end


  private

  def authorized?
    render json: { error: 'You are not authorized.' }, status: :unauthorized unless current_api_user.admin?
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation, :admin)
  end

end
