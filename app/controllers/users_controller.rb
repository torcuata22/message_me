class UsersController < ApplicationController

  def index
    @users=User.all
  end

  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to Coffee Chat, #{@user.username}, you have successfully signed up."
      redirect_to new_session_path
    else
      flash.now[:alert] = "Failed to create user."
      render 'new'
    end
  end
    
  def destroy
    if current_user
      current_user.destroy
      session[:user_id] = nil # Log the user out after deletion
      flash[:notice] = "Your account has been deleted."
      redirect_to root_path # Change this to the appropriate path
    else
      flash[:alert] = "You must be logged in to perform this action."
      redirect_to root_path # Change this to the appropriate path
    end
  end
    
    
  private
    
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
      
end
