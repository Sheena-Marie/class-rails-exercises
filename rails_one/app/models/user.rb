class User < ActiveRecord::Base
  validates :name, :email, :password, presence: true


  def self.order_by_name_asc
    order(name: :asc)
  end

    def self.adults
      where('age >= ?', 18)
    end

end
