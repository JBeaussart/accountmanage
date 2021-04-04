class User < ApplicationRecord
	has_many :accounts
	
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
