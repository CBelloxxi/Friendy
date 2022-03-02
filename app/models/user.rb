class User < ApplicationRecord
  has_many :donees
  has_many :donations
  has_many :orders

  has_one  :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
