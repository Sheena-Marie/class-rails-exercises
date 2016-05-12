class Shelter < ActiveRecord::Base
  belongs_to :user
  has_many :shelter_categories
  has_many :shelter_types, through: :shelter_categories

  geocoded_by :street_address
  after_validation :geocode

  def street_address
    [street, suburb, postcode, state, country].compact.join(', ')
  end
end
