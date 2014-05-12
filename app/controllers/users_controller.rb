class UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
	@titre=@user.nom
	end
	
def create
    User.create(user_params)
  end	
	

  
  def new
  @titre= "Inscription"
  end
  
  	 private
  def user_params
    params.require(:user).permit(:nom, :email,:password,:password_confirmation)
  end
end
