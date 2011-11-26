class UsersController < ApplicationController
before_filter :admin_user, :only =>:index


  def index
	@users = User.all
  end

  def show
  end

  def destroy
	User.find(params[:id]).destroy
	flash[:success] = "User Destroyed"
	redirect_to users_path
  end


 def destroy
	user = User.find(params[:id])
	if user.admin? 
		flash[:error] = "Cannot destroy the creator"
		redirect_to users_path
	else
		user.destroy
		flash[:success] = "User Destroyed"
		redirect_to users_path
	end
 end


private

def admin_user
    if  signed_in? and current_user.admin?
    
    else
	redirect_to(root_path)
   end
end
  

end
