class Organisation < ApplicationRecord
  mount_uploader :logo, AvatarUploader
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :user, uniqueness: true
  validates :phone, presence: true, length: { minimum: 3, maximum: 30 }, allow_blank: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :description, presence: true, length: { minimum: 10, maximum: 600 }
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode
end
