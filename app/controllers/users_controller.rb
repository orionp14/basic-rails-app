class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name)
  end
end
  
