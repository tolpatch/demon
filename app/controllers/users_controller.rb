class UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
	@titre=@user.nom
	end
	
def create
    User.create(user_params)
  end	
  
  def create
    @user = User.new(params[:user].permit(:nom, :email,:password,:password_confirmation))
    if @user.save
	 flash[:success] = "Bienvenue dans l'Application Exemple!"
     redirect_to @user
    else
      @titre = "Inscription"
      render 'new'
    end
  end	

  
  def new
    @user = User.new
  @titre= "Inscription"
  end
  
  	 private
  def user_params
    params.require(:user).permit(:nom, :email,:password,:password_confirmation)
  end
end
