class Order < ActiveRecord::Base
  before_validation :generate_number, on: :create
  
  attr_accessible :number, :seat_id, :user_id
  belongs_to :seat
  belongs_to :user

  protected

  def generate_number
    if self.number.blank?
      record = true
      while record
        random = rand(1000000000).to_s.rjust(9, '0')
        record = self.class.where(number: random).first
      end
      self.number = random
    end
    self.number
  end

end
