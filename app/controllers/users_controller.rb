class UsersController < ApplicationController
before_filter :admin_user, :only =>:index

  def index
	@users = User.all
  end

  def show
  end


private

def admin_user
    if  signed_in? and current_user.admin?
    
    else
	redirect_to(root_path)
   end
end
  

end
