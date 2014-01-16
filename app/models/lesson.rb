#coding: utf-8
class Lesson < ActiveRecord::Base
  attr_accessible   :description,  
                    :name, 
                    :room_id, 
                    :teacher_id, 
                    :course_id, 
                    :supply,
                    :starting_time,
                    :ending_time,
                    :point
  
  belongs_to        :room
  belongs_to        :teacher
  belongs_to        :course
  
  has_many :seats, :through => :room

  def state
    sate_value = '订满'
    self.seats.each {|seat| sate_value = '预订' if seat.state == '可选' or seat.state.blank? }
    return sate_value
  end
  
end