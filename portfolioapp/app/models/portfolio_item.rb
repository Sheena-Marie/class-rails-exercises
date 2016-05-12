class PortfolioItem < ActiveRecord::Base
  mount_uploader :image, PortfolioItemImageUploader
end
