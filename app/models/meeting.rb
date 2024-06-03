class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :localler

  validates :start_date, :end_date, :location, presence: true
end
