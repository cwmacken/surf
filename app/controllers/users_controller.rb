#I need explaination on what the UsersCOntroller is saying to the application center

class UsersController < ApplicationController

	#need to go over plurization and where to find the methods
	def new
		@user = User.new
	end

	# why do we need the create??????
	def create
		@user = User.create(params[:user].permit(:email, :password, :password_confirmation, :shaper))
			if @user.save
				 # Tell the UserMailer to send a welcome Email after save
        		#UserMailer.welcome_email(@user).deliver
 				session[:user_id] = @user.id
 				redirect_to '/boards/new', notice: "Thank you for signing up!"


 		else
			#format.html { render action: 'new' }
        	#format.json { render json: @user.errors, status: :unprocessable_entity }
			redirect_to action:"new"
		
		
		end
	end 
end

