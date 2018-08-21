class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

        @user = User.new(user_params)
        @user.username = "anonymous#{User.last.id + 1}" if @user.username.nil?
        if @user.save
          session[:user_id] = @user.id
          redirect_to @user
        else
           render '/users/new'
        end

     end

  def show
     if logged_in
       @user = User.find_by(id: params[:id])
   else
       redirect_to '/'
     end
  end

  def edit
  end


    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to root_path
    end

private

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :email, :admin)
  end
end
