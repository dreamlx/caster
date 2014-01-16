#coding: utf-8
class Seat < ActiveRecord::Base
  attr_accessible :room_id, :name, :state
  belongs_to :room
  has_many :lessons

  default_value_for :state, "可选"
end
