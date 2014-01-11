class Venue < ActiveRecord::Base
  attr_accessible :description, :img, :name, :img_cache
  has_many :rooms, :dependent => :delete_all 

  mount_uploader :img, ImageUploader
end
