class BoardsController < ApplicationController
	def index 
		@boards = Board.all
	end 


	def new
		@board = Board.new
	end

	def create
		@board = Board.create(params[:board].permit(:style, :length_feet, :length_inches, :width, :thickness, :fins))
		redirect_to :action => "index", :id =>@board._id
	end

	def destroy
		Board.find(params[:id]).destroy
		redirect_to boards_url
	end



end