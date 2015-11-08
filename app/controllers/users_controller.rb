class UsersController < ApplicationController

before_action :authorize, except: [:index, :new, :create, :show]

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
  end

  def new
    @user= User.new
  end

  def create
    before_filter :require_login, except: [:new, :create]
    @user = User.new(user_params)
      if @user.save
        redirect_to root_path
      else
        redirect_to "/users/new"
      end
    end

  def add_workout
    @user = User.find(params[:id])
    @user.add_workout(workout)
  end

    private
    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation)
    end

end
