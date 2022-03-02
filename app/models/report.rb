class Report < ApplicationRecord
  belongs_to :user
  belongs_to :donee

  validates :message, :assistance_type, :location, presence: true
  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
end
