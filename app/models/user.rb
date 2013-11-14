class User < ActiveRecord::Base
	has_many :albums
	has_many :photos, :through => :albums

	validates :email, :uniqueness => true

	has_secure_password
end
