class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
										uniqueness: { case_sensitive: false }, 
										format: { with: VALID_EMAIL_REGEX }
	before_save { self.email = email.downcase }
	before_create :create_remember_token
	has_secure_password
	#has_many_tickets
	validates :password, length: { minimum: 6 }
	validates :password_confirmation, presence: true

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = User.encrypt(User.new_remember_token)
		end
end
