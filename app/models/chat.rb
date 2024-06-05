class Chat < ApplicationRecord
  has_many :messages
  belongs_to :localler
  belongs_to :user
end
