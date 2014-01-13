class Room < ActiveRecord::Base
  attr_accessible :description, 
                  :name, 
                  :venue_id, 
                  :size,
                  :seatcount, 
                  :number_of_line
  has_many :seats, :dependent => :delete_all 
  has_many :lessons
  belongs_to :venue
end
