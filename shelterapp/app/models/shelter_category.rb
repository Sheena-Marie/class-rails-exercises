class ShelterCategory < ActiveRecord::Base
  belongs_to :shelter
  belongs_to :shelter_type
end
