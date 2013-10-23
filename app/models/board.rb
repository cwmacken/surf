class Board
	include Mongoid::Document
	field :style, type: String
	field :length_feet, type: Integer
	field :length_inches, type: Integer
	field :width, type: Float
	field :thickness, type: Float
	field :fins, type: String
end