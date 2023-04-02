class User < ApplicationRecord
	# Implement constrains (validations) here

	# username must be present
	validates :username, presence: true

	# email is optional
	validates :email, presence: true

	# password must be present
	# validates :password, presence: true
	validates :password, length: { minimum: 10 } # do we need presence:true?
end
