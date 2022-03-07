class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :donee

  monetize :price_cents
end
