#coding: utf-8
class Seat < ActiveRecord::Base
  attr_accessible :room_id, :name
  belongs_to :room
  has_many :lessons
  has_many :lesson_seats

end

