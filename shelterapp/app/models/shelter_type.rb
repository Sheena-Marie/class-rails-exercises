class ShelterType < ActiveRecord::Base
  has_many :shelter_categories
  has_many :shelters, through: :shelter_categories
end
