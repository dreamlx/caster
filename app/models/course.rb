class Course < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :lessons, :dependent => :delete_all 
end
