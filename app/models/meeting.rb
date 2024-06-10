class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :localler

  validates :time, :location, presence: true
end
