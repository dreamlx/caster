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
  has_many :lesson_seats

  after_commit :generate_seat_state, :on => :create

  def state
    sate_value = '订满'
    self.lesson_seats.each {|seat| sate_value = '预订' if seat.state == '可选' or seat.state.blank? }
    return sate_value
  end

  def generate_seat_state
    self.seats.each do |seat|
      LessonSeat.create(seat_id: seat.id, lesson_id: self.id)
    end
  end
  
end