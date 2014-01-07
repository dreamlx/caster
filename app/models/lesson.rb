class Lesson < ActiveRecord::Base
  attr_accessible :description, :lessontime, :name, :room_id, :teacher_id, :course_id
  belongs_to :room
  belongs_to :teacher
  belongs_to :course
end
