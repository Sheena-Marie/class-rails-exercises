class Client < ActiveRecord::Base
  belongs_to :company

  #validations

  # gem stuff

  # callbacks

  after_create :create_profile

  def create_profile
    profile = Profile.create(user_id: id)
  end

  def self.alphabetical_order
    order(name: :asc)
  end

  # methods

  def self.location_filter(location)
    where(location: location)
  end


end
