class UserInformationController < ApplicationController
	def show
		@user = User.find(params[:user_id])
		@user_infor = @user.user_information
	end

	def new
		@user = User.find(params[:user_id])
	end

	def edit
		@user = User.find(params[:user_id])
		@user_infor = @user.user_information
		#if @user_infor.nil?
		#	@user_infor.create()
		#end
	end

	def create
		@user = User.find(params[:user_id])
		@user_infor = UserInformation.create(user_information_params)
		@user.user_information = @user_infor

		redirect_to profile_path(@user)
	end

	def update
		@user = User.find(params[:user_id])
		@user_infor = @user.user_information.update(user_information_params)

		redirect_to profile_path(@user)
	end

	private
	def user_information_params
	    params.require(:user_information).permit(:name, :description)
	end
end
