ActiveAdmin.register Room do
  belongs_to :venue,  :optional => true
  #navigation_menu :venue
  sidebar "Details", only: [:show, :edit] do
    ul do
      li link_to("Seats", admin_room_seats_path(room))
      #li link_to("Milestones", admin_project_milestones_path(project))
    end
  end 

  index do
    column :venue
    column :name
    column :description
    column :size

    default_actions
  end 
end
