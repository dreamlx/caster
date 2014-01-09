ActiveAdmin.register Course do
    sidebar "Details", only: [:show, :edit] do
      ul do
        li link_to("Lessons", admin_course_lessons_path(course))
        #li link_to("Milestones", admin_project_milestones_path(project))
      end
    end  
end
