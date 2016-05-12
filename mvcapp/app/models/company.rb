class Company < ActiveRecord::Base
  has_many :clients

  validates :name, :website, presence: true
end
