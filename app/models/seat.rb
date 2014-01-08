class Seat < ActiveRecord::Base
  attr_accessible :lesson_id, :name, :state
  belongs_to :lesson
end
