class Venue < ActiveRecord::Base
  attr_accessible :description, :img, :name, :img_cache
  has_many :rooms, :dependent => :delete_all 
  has_many :lessons, :through => :rooms

  mount_uploader :img, ImageUploader
end
