class Location < ApplicationRecord
  belongs_to :user

  validates :country, presence: true # check
  validates :city, presence: true # check
  validates :state, presence: true # check
  validates :area_code, presence: true # check
  validates :address, presence: true # check
  validates :reference, presence: true # check
end
