ActiveAdmin.register Venue do
    sidebar "Details", only: [:show, :edit] do
      ul do
        li link_to("Rooms", admin_venue_rooms_path(venue))
        #li link_to("Milestones", admin_project_milestones_path(project))
      end
    end
end
