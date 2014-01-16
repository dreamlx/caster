ActiveAdmin.register Seat do
  #state：可选，已订
  belongs_to :room
  navigation_menu :room  
end
