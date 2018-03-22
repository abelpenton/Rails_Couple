class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
      @user = User.find(params[:id])
    end
  
    def me
      @user = current_user
      render :show
    end
  
    def edit
      @user = current_user
    end
  
    def update
      @user = current_user
      if @user.update(allowed_params)
        redirect_to me_user_path
      else
       redirect_to edit_user_path
      end
    end
  
    private
    def allowed_params 
      params.require(:user).permit(:firstname, :lastname, :username, :age , :image_url, :avatar, :occupation, :sex, :preference, :about ) #for each attribute in the model /white_listed
    end  
end
