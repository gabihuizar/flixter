class UsersController < ApplicationController
	def new
		@user = User.find(params[:id])
		redirect_to root_path
	end
end
