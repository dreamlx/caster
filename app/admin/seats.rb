ActiveAdmin.register Seat do
  #state：可选，已订
  belongs_to :room,  :optional => true
  menu false
end
