class Enquiry < ApplicationRecord
	validates :firstname, length: { minimum: 2 }
	validates :lastname, length: { minimum: 2 }
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :message, length: { minimum: 2 }
end