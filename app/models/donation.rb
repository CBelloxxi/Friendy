class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :donee
  validates :amount, presence: true
end
