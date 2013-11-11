	class Board
	include Mongoid::Document

	field :style, type: String
	
	field :length, type: String

	field :volume, type: String	

	#field :noseWidth6, type: String
	field :noseWidth12, type: String
	#field :tailWidth24, type: String
	field :width, type: String	
	field :widePoint, type: String
	#field :tailWidth24, type: String
	field :tailWidth12, type: String
	#field :tailWidth6, type: String
	
	#field :thicknessNose6, type: String
	field :thicknessNose12, type: String
	#field :thicknessNose24, type: String
	field :thicknessMid, type: String
	#field :thicknessTail24, type: String
	field :thicknessTail12, type: String
	#field :thicknessTail6, type: String

	field :rockerNose, type: String
	#field :rockerNose6, type: String
	field :rockerNose12, type: String
	field :rockerTail12, type: String
	#field :rockerNose6, type: String
	field :rockerTail, type: String

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