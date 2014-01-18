#coding: utf-8
class LessonSeat < ActiveRecord::Base
  attr_accessible :lesson_id, :seat_id, :state

  default_value_for :state, '可选'
end
