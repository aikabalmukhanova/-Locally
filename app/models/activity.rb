class Activity < ApplicationRecord
  has_many :localler_activities

  validates :title, presence: true
end
