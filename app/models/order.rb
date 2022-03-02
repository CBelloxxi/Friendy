class Order < ApplicationRecord
  belongs_to :user
  belongs_to :donation
  monetize :amount_cents
end
