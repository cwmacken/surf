class BoardsController < ApplicationController

	before_action :authorize


	def index 
		@boards = Board.all
	end 


	def new
		@board = Board.new
		#session[:user_id]= "5269b05a436f6e240f140000"
	end
	def assign_shaper
		@board = Board.find(params[:id])
		@board.producer = User.find(params[:producer_id])
		@board.save		
		redirect_to boards_url
	end
	# def shaperEmail(recipient)
	# 	@user= recipient
	# 	UserMailer.shaper_email(@user).deliver
	# 	redirect_to '/boards/new', notice: "Thank you for signing up!"
	# end 
	def show
		@board = Board.find(params[:id])
		@users = User.where(shaper: true)
	end

	def create
		#b = board.new()
		@board = Board.new(params[:board].permit(:style, :length, :volume, :noseWidth12, :width, :widePoint, :tailWidth12, :thicknessNose12, :thicknessMid, :thicknessTail12, :rockerNose, :rockerNose12, :rockerTail12, :rockerTail, :concaveNoseEntry, :concaveNose, :concaveMid, :concaveTail, :concaveExit, :railType, :tailType, :fins, :glassTop, :glassBottom, :specialComments))
		@board.customer = current_user
		@board.save
		redirect_to :action => "index", :id =>@board._id
		
	end

	def destroy
		Board.find(params[:id]).destroy
		redirect_to boards_url
	end

	def order
		@board = Board.find(params[:id])
		redirect_to :action => "show", :id =>@board._id
	end

	def edit
		@board = Board.find(params[:id])
	end

	def update
		@board = Board.find(params[:id])

  		if @board.update_attributes(params[:board].permit(:style, :length, :volume, :noseWidth12, :width, :widePoint, :tailWidth12, :thicknessNose12, :thicknessMid, :thicknessTail12, :rockerNose, :rockerNose12, :rockerTail12, :rockerTail, :concaveNoseEntry, :concaveNose, :concaveMid, :concaveTail, :concaveExit, :railType, :tailType, :fins, :glassTop, :glassBottom, :specialComments))
			redirect_to boards_url
  		else
  			render 'edit'
  	end
	end



	 
	


end