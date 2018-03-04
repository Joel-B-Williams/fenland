class UsersController < ApplicationController
	include UserSessions

	def new
		@user = User.new
	end

	def create
		user = User.create(user_params)
		if user
			login(user)
			redirect_to root_path
		else
			render 'new'
		end
	end

	private
		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation)
		end
end
