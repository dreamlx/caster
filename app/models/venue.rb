class Venue < ActiveRecord::Base
  attr_accessible :description, :img, :name
  has_many :rooms, :dependent => :delete_all 
end
