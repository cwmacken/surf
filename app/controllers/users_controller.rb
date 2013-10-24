#I need explaination on what the UsersCOntroller is saying to the application center

class UsersController < ApplicationController

	#need to go over plurization and where to find the methods
	def new
		@user = User.new
	end

	# why do we need the create??????
	def create
		@user = User.create(params[:user].permit(:email, :password, :password_confirmation))
		redirect_to action:"new"
	end 
end