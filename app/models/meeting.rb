class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :localler
  belongs_to :chat

  validates :time, :location, presence: true
end
