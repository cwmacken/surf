class AuthenticationsController < ApplicationController 
	before_action :authenticate_user, only:[:destroy]

		def new 
			#are they logged in???- lorin
			if current_user #if they are you can log them in again
				redirect_to boards_url
			else
				@user = User.new
			end
		end
	def create 
		#I DONT GET THIS
		# if user = nil
		# 	redirect_to "/users/hompage"
		# else
			user = User.find_by(email: params[:user][:email])
			if user 
				#this is wherewe are authenticating the user
				if user.authenticate(params[:user][:password])
					session[:user_id] = user.id 
					redirect_to "/boards"

				elsif
					if !user.authenticate(params[:user][:password])
						redirect_to "/authentications/new",:notice => "you shall not pass..... with that password"
					else	
						# 	redirect_to "/authentications/create",:notice => "eflkefgklffdkj"
					end
				end
			end

				
		end
	# end
	def destroy
			session[:user_id] = nil
			redirect_to "/authentications/new"
		end
end	