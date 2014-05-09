class UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
	end
	
def create
    User.create(user_params)
  end	
	
	 private
  def user_params
    params.require(:user).permit(:nom, :email)
  end
  
  def new
  @titre= "Inscription"
  end
end
