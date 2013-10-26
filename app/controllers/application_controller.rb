class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  #what does all this do???????
  def current_user
  	if session[:user_id]
  		@current_user ||=User.find_by(id: session[:user_id])
	end
end


	def authenticate_user
			redirect_to authentications_url unless current_user
	end
end


  def authorize
    redirect_to "/authentications/new",  :notice => "Y U NO LOGIN??" if current_user.nil?
  end 


  def show
    # doesn't need to assign the flash notice to the template, that's done automatically
  end