class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # before_validation :before_validation
  devise :database_authenticatable, :registerable,
		 		 :recoverable, :rememberable, :validatable
  validates	:name,:contact,:city, 					presence: 		 true
	validates :contact,            		   		 	numericality: true
	validates :gender,											 	inclusion: {in:["Male","Female"],message: " should select"}
	has_many :addresses, as: :addressable
  # def before_validation
  # 	binding.pry
  # end
end
