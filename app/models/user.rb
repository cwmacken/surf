require 'bcrypt'

# this is where we are defining the user correct????
class User
	include Mongoid::Document

	 has_many :produced_boards, class_name:"Board", inverse_of: :producer
	 has_many :bought_boards, class_name:"Board", inverse_of: :customer

	attr_accessor :password, :password_confirmation
	field :name, type: String
	field :height, type: Float
	field :weight, type: Float
	field :skillLevel, type: String
	field :email, type: String
	field :salt, type: String
	field :hashed_password, type: String
	field :shaper, type: String

	field :label, type: String
	field :website, type: String
	field :address, type: String
	field :phone, type: String
	

	#is_producer boolen

	before_save :thisMethodCanBeWhateverIWantItToBe_Potato
	validates :email, presence: true
	validates :email, uniqueness: {case_sensitive: false}
	validates :password, confirmation: true


	# i have no idea what this does 
	def authenticate(password)
			self.hashed_password ==
				BCrypt::Engine.hash_secret(password, self.salt)
	end

	def thisMethodCanBeWhateverIWantItToBe_Potato
		#whay do I need the question mark???
		if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.hashed_password =
				BCrypt::Engine.hash_secret(password,self.salt)
			password = password_conformation = nil
		end
	end
end 
