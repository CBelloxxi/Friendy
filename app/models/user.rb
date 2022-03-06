class User < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :donees, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_one  :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
