class UsersController < ApplicationController
	def index
		@users = User.all 
	end

	def new
		@user = User.new
	end

	def create
  	@user = User.create(user_params)
    login(@user)
  	redirect_to @user
	end

	def show 
		@user = User.find(params[:id])
    	@user_softwares = UserSoftware.where(user_id: @user.id)
	end

  def edit
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to @user
  end

	private
	def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :job_title, :job_field, :blurb)
	end
end
