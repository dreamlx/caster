class Room < ActiveRecord::Base
  attr_accessible :description, 
                  :name, 
                  :venue_id, 
                  :seatcount, 
                  :number_of_line
  has_many :seats, :dependent => :delete_all 
  has_many :lessons
  belongs_to :venue

  after_create :generate_seats
  after_update :generate_seats

  validates_numericality_of :seatcount, :on => :create
  validates_numericality_of :number_of_line, :on => :create
  validates_presence_of :name

  private
  def generate_seats
    self.seatcount.times.each do |i|
      self.seats.create!(name: "#{self.name}:seat_no:#{i+1}")
    end
  end
end
