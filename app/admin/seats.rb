ActiveAdmin.register Seat do
  belongs_to :room
  navigation_menu :room  
end
