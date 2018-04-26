class User < ApplicationRecord
	validates :firstname, :lastname, :email, presence: true
	validates :email, uniqueness: true

	has_many :tasks
	
end
