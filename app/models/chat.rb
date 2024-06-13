class Chat < ApplicationRecord
  has_many :messages
  has_many :meetings
  belongs_to :localler
  belongs_to :user
end
