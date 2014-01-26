ActiveAdmin.register Seat do
  #state：可选，已订
  belongs_to :room,  :optional => true
  menu false

    index do
      column :id
      column :venue do |seat|
        seat.room.venue.name
      end
      column :room do |seat|
        seat.room.name
      end
      column :name

      default_actions
  end 
end
