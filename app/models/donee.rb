class Donee < ApplicationRecord
  belongs_to :user
  # has_one :qr_code
  validates :first_name, :last_name, :description, presence: true
  has_one_attached :photo
  has_many :reports, dependent: :destroy
  has_many :donations, dependent: :destroy
end
