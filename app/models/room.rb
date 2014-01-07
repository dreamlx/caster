class Room < ActiveRecord::Base
  attr_accessible :description, :name, :venue_id
end
