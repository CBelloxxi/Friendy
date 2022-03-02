class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :donee

  validates :user, :donee, presence: true
  monetize :price_cents
end
