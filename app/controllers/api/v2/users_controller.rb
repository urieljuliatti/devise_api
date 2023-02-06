# frozen_string_literal: true

class Api::V2::UsersController < ApplicationController
  before_action :authenticate_api_user!
  before_action :authorized?
  before_action :set_user, only: [:show]
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  private

  def authorized?
    render json: { error: 'You are not authorized.' }, status: :unauthorized unless current_api_user.admin?
  end

  def set_user
    @user = User.find(params[:id])
  end
end
