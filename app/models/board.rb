class Board
	include Mongoid::Document

	field :style, type: String
	
	field :length, type: Float

	field :volume, type: Float	

	#field :noseWidth6, type: Float
	field :noseWidth12, type: Float
	#field :tailWidth24, type: Float
	field :width, type: Float	
	field :widePoint, type: Float
	#field :tailWidth24, type: Float
	field :tailWidth12, type: Float
	#field :tailWidth6, type: Float
	
	#field :thicknessNose6, type: Float
	field :thicknessNose12, type: Float
	#field :thicknessNose24, type: Float
	field :thicknessMid, type: Float
	#field :thicknessTail24, type: Float
	field :thicknessTail12, type: Float
	#field :thicknessTail6, type: Float

	field :rockerNose, type: Float
	#field :rockerNose6, type: Float
	field :rockerNose12, type: Float
	field :rockerTail12, type: Float
	#field :rockerNose6, type: Float
	field :rockerTail, type: Float

	field :concaveNoseEntry, type: String
	#field :concaveNose6, type: String
	field :concaveNose, type: String
	field :concaveMid, type: String
	field :concaveTail, type: String
	#field :concaveTail6, type: String
	field :concaveExit, type: String

	field :railType, type: String
	field :tailType, type: String
	field :fins, type: String
	field :glassTop, type: String
	field :glassBottom, type: String

	field :specialComments, type: String	

	belongs_to :customer, class_name:"User", inverse_of: :bought_boards
	belongs_to :producer, class_name:"User", inverse_of: :produced_boards

end