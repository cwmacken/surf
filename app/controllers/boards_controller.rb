class BoardsController < ApplicationController

	before_action :authorize


	def index 
		@boards = Board.all
	end 


	def new
		@board = Board.new
		#session[:user_id]= "5269b05a436f6e240f140000"
	end

	def create
		@board = Board.create(params[:board].permit(:style, :length, :volume, :noseWidth12, :width, :widePoint, :tailWidth12, :thicknessNose12, :thicknessMid, :thicknessTail12, :rockerNose, :rockerNose12, :rockerTail12, :rockerTail, :concaveNoseEntry, :concaveNose, :concaveMid, :concaveTail, :concaveExit, :railType, :tailType, :fins, :glassTop, :glassBottom, :specialComments))
		redirect_to :action => "index", :id =>@board._id
	end

	def destroy
		Board.find(params[:id]).destroy
		redirect_to boards_url
	end



end