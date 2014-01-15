class Seat < ActiveRecord::Base
  attr_accessible :room_id, :name, :state
  belongs_to :room
  has_many :lessons
end
