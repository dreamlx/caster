class Teacher < ActiveRecord::Base
  attr_accessible :description, :img, :name, :img_cache
  mount_uploader :img, ImageUploader
end
