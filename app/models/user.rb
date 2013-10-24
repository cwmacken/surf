require 'bcrypt'

# this is where we are defining the user correct????
class User
	include Mongoid::Document

	attr_accessor :password, :password_confirmation

	field :email, type: String
	field :salt, type: String
	field :hashed_password, type: String

	before_save :thisMethodCanBeWhateverIWantItToBe_Potato
	validates :email, presence: true
	validates :email, uniqueness: {case_sensitive: false}
	validates :password, confirmation: true


	# i have no idea what this does 
	def authenticate
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
