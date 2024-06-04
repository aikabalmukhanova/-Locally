class Localler < ApplicationRecord
  belongs_to :user
  has_many :localler_activities
  has_many :activities, through: :localler_activities

  validates :description, :availability, :location, presence: true
end
