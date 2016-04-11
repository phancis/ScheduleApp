class UsersController < ApplicationController
  before_action :set_user, except: [:index, :new]
  def index
  end

  def new
    @user = User.new
    respond
  end

  def create
  end

  def show
  end

  def destroy
  end

  def update
  end

  def edit
  end

  private
  def set_all_users
    @users = User.all
  end
  def set_user
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e

    end
  end
end
