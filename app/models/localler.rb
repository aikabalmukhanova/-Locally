class Localler < ApplicationRecord
  belongs_to :user
  has_many :localler_activities
  has_many :activities, through: :localler_activities
  has_many :chats

  validates :description, :location, presence: true
  validates :description, length: { minimum: 130, maximum: 500 }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
