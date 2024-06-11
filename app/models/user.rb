class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :meetings
  has_one :localler
  has_many :messages
  has_many :chats
  has_one_attached :profile_picture

  validates :username, uniqueness: true
  validates :bio, length: { minimum: 50, maximum: 500 }
end
