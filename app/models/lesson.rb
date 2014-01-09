class Lesson < ActiveRecord::Base
  attr_accessible   :description,  
                    :name, :room_id, 
                    :teacher_id, 
                    :course_id, 
                    :supply,
                    :starting_time,
                    :ending_time
  
  belongs_to        :room
  belongs_to        :teacher
  belongs_to        :course
  
  has_many :seats, :through => :room
end